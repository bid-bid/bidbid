package com.bidbid.service;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.bidbid.global.exception.FileIOException;
import com.bidbid.util.MultipartUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Objects;
import java.util.UUID;

@Service
@RequiredArgsConstructor
public class ImageService {
    @Value("${cloud.aws.s3.bucket}")
    private String bucket;

    private final AmazonS3Client amazonS3Client;
    private final MultipartUtil multipartUtil;

    public String save(MultipartFile multipartFile) {
        return storeToS3(multipartFile);
    }

    private String storeToS3(MultipartFile multipartFile) {

        String fileType = Objects.requireNonNull(multipartFile.getOriginalFilename()).split("\\.")[1];
        ObjectMetadata data = new ObjectMetadata();
        String fileName = UUID.randomUUID().toString() + "." + fileType;
        data.setContentType(fileName);
        data.setContentLength(multipartFile.getSize());
        try {
            PutObjectResult result = amazonS3Client.putObject(new PutObjectRequest(bucket,fileName, multipartFile.getInputStream(), data)
                    .withCannedAcl(CannedAccessControlList.PublicRead));
            return "https://bidbid.s3.ap-northeast-2.amazonaws.com/" + fileName;
        } catch (IOException e) {
            e.printStackTrace();
            throw new FileIOException();
        }
    }

}
