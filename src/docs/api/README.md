# API 명세

## 메인 페이지
GET /

## 로그인 페이지
GET /login

## 카테고리 페이지
GET /category

## 아이템 목록
GET /item-info

---

## 로그인 인증

##### REQUEST
POST /api/auth/login
{
    "email": "user@example.com",
    "password": "rawPassword"
}

##### RESPONSE
302 redirect:/

---
## 로그아웃

##### REQUEST
POST /api/logout

##### RESPONSE
302 redirect:/

---

## 회원가입

##### REQUEST
POST /api/members

{
"email": "user@example.com",
"password": "rowPassword",
"name": "홍길동"
}



