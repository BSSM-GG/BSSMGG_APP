<h1 align="center">
	<img
		width="200"
		alt="The Lounge"
		src="https://user-images.githubusercontent.com/89582664/228715980-8885efbc-00dd-48d3-bf1a-1c4c8641e1ff.png">
</h1>

<h3 align="center">
	(BSM 전용)  교내 게임 랭킹 및 전적 검색 🎮
</h3>

<p align="center">
	<strong>
		<a href="https://www.figma.com/file/AkylsIfrn01rwvuRjRJOyd/%EC%99%80%EB%93%9C%EC%A2%80-%EB%B0%95%EC%95%84%EB%9D%BC?node-id=0-1&t=ORAwgDu9h86GLumM-0">Design</a>
		


<p align="center">
	<img src="https://user-images.githubusercontent.com/89582664/211317339-4e4e3681-3071-429e-8c91-bbb6c5b6ed11.png" width="550">
</p>

## 팀원역할

- **Mobile-FrontEnd** 조용제(Lovingcats)	
- **Web-FrontEnd** 김준서(B-KJS26)
- **BackEnd** 이동호(astrhoya)	
<br>
		
## 앱 설명

<br>
		
### 앱을 만들게 된 계기
  부산 SW마이스터고에서 게임을 즐기는 학생들이 많은데 재학생들 사이에서 게임의 실력 랭킹과 전적을 검색할 수 있게 하면 재밌고 
  취미 생활을 더 잘 보낼 수 있지 않을까 해서 만들게 되었습니다.

<br>
		
### 개발하고자 하는 목표
  게임을 보다 더 쉽게 진행하고, 승부욕도 늘리는 게 목표입니다.

<br>
		
### 사용기술스택
앱 :  [Flutter](https://flutter.dev/?gclid=Cj0KCQiAg_KbBhDLARIsANx7wAz5lYyBO9RFwhX-V1IJ_xWVuCK1cZkySEkWeqZMPGofPCvRPaHPlWAaAijFEALw_wcB&gclsrc=aw.ds)
<br>
백엔드 :  [Node.js](https://nodejs.org/ko)
	
<br>
		
### 개발기간

2023.03 ~ 2022.06 (3개월)

<br>

### Running from source

터미널에 이 명령어들을 입력해 실행해보세요 : 

```sh
git clone https://github.com/BSSM-GG.git
cd BSSM_GG
flutter doctor
flutter pub get
flutter run
```

Flutter doctor에서 오류가 난다면 구글링 후 해결

<br>

## 기능

- 로그인  [bsmOauth(부산소프트웨어마이스터고 전용 로그인)](https://auth.bssm.kro.kr/oauth?clientId=5f034939&redirectURI=http://localhost:3000/oauth) 소셜로그인
- 전적검색
- 교내 시즌 랭킹
- 내전 팀 빌더
- 모든 서비스의 게임 선택(리그 오브 레전드, 발로란트)
		
<br>
		
## 배운점 & 아쉬운점
		
### 배운점
 - riot api의 활용 및 token의 응용
 - Widget의 효율성 증가
 - JWT 방식의 응용
		
### 아쉬운점
 - animation을 활용하는 과정에서 시간이 많이 소비되었습니다.
 
 
## Git upload Rules

- [CREATE] 새로 만들었을때
- [UPDATE] 만들어진 것에서 수정이나 변동사항이 생겼을때
- [ADD] 무언가가 추가 되었을때
- [DELETE] 만들어진 것을 삭제 했을때
- [REFACTORING] 코드를 리팩토링 했을때
- [FIX] 오류를 확인하고 고쳤을때
- [REPLACE] 파일을 옮겼을 때
