# bidbid

## DOCKER 환경 실행 방법
### 개발 환경 실행(약 1분 소요)
```docker
docker compose -f docker-compose.dev.yml up
```

### 개발 환경 종료
```docker
docker compose -f docker-compose.dev.yml down
```

##### 주의사항 : down 후 다시 up 해도 변경사항 적용 안됨 : bidbid_spring image 삭제 하고 재생성
