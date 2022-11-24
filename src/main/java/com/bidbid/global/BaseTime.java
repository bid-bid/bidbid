package com.bidbid.global;

import javax.persistence.Embeddable;
import java.time.LocalDateTime;
import java.util.Optional;

@Embeddable
public class BaseTime {
    private LocalDateTime createAt;
    private LocalDateTime updateAt;
    private LocalDateTime deleteAt;

    public BaseTime() {
        createAt = LocalDateTime.now();
        updateAt = LocalDateTime.now();
    }

    public void update() {
        updateAt = LocalDateTime.now();
    }

    public void delete() {
        deleteAt = LocalDateTime.now();
    }

    public boolean isDelete() {
        return Optional.ofNullable(deleteAt).isPresent();
    }
}
