## 개발 환경 
1. IDE : Intellij IDEA Community
2. Spring Boot 3.0.7
3. JDK 17
4. MySQL
5. Spring Data JPA
6. Thymeleaf

---

## 회원관리 주요 기능
1. 로그인 / 로그아웃
2. 회원가입
3. 회원목록 ( 정보 / 삭제 )
4. 정보수정

---

## 게시판 주요 기능 
1. 글쓰기 ( /board/save )
2. 글목록 ( /board/ )
3. 글조회 ( /board/{id} )
4. 글수정 ( /board/update/{id} )
   1) 상세화면에서 수정 버튼 클릭
   2) 서버에서 해당 게시글의 정보를 가지고 수정 화면 출력
   3) 제목, 내용 수정 입력 받아 서버로 요청
   4) 수정 처리
5. 글삭제 ( /board/delete/{id} )
6. 페이징처리 ( /board/paging )

---

### 주제 
- AJAX 다뤄보기

### 사용 Dependency
- Lombok
- Spring Web
- Thymeleaf

### 주요 내용 
- front 페이지에서 ajax 요청 보내고 controller에서 받는 방법
- ResponseBody, ResponseEntity 리턴 활용
- ajax에서 리턴을 받아 어떻게 javaScript로 활용하는지

### ajax 활용
- 이메일 또는 아이디 중복체크
- 좋아요 또는 싫어요
- 찜
- 댓글 작성

---

#### ToDo App 만들기

#### 설문조사 웹애플리케이션 만들기

#### TO-DO LIST 만들기

#### 쇼핑몰 만들기

#### 블로그 만들기

#### 방명록 만들기

#### 게시판 만들기

#### 영화 예매 사이트 만들기

#### 채팅 애플리케이션 만들기

#### 인스타그램 클론 코딩하기 

#### 회원관리 기능 만들기

--- 