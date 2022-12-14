package com.bidbid.service;

import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.bidbid.global.exception.FileIOException;
import com.bidbid.util.MultipartUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

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
        File file = multipartUtil.parseFile(multipartFile);
        try {
            multipartFile.transferTo(file);
        }catch (IOException e) {
            e.printStackTrace();
            throw new FileIOException();
        }
        amazonS3Client.putObject(new PutObjectRequest(bucket,file.getPath(), file)
                .withCannedAcl(CannedAccessControlList.PublicRead));

        return file.getPath();
    }

}
