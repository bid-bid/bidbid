# BACKEND RULE

## API 구성
- HTTP Method는 GET or POST 만 사용 가능(PUT, PATCH, DELETE 등 사용 불가)
- 단순한 화면단 반환 : view 내 패키지 이용
- 서비스/리포지토리 로직 이용 : api 내 패키지 이용
  - path 앞에 "api/" 붙임
  - restful하게 설계