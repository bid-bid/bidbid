package com.bidbid.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.UUID;

@Component
public class MultipartUtil {
    @Value("${cloud.aws.s3.default-path}")
    private String defaultPath;

    /**
     * 파일의 전체 경로를 생성합니다.
     * @param contentType ex) image/png
     */
    public String createPath(String contentType) {
        return String.format("%s/%s.%s", defaultPath, createFileId(), getFormat(contentType));
    }

    /**
     * 로컬에서의 사용자 홈 디렉토리 경로를 반환합니다.
     */
    public String getLocalHomeDirectory() {
        return System.getProperty("user.home");
    }

    public File parseFile(MultipartFile multipartFile) {
        return new File(getLocalHomeDirectory(), createPath(multipartFile.getContentType()));
    }

    /**
     * 새로운 파일 고유 ID를 생성합니다.
     * @return 36자리의 UUID
     */
    private String createFileId() {
        return UUID.randomUUID().toString();
    }

    /**
     * Multipart 의 ContentType 값에서 / 이후 확장자만 잘라냅니다.
     * @param contentType ex) image/png
     * @return ex) png
     */
    private String getFormat(String contentType) {
        return contentType.substring(contentType.lastIndexOf('/') + 1);
    }

}
