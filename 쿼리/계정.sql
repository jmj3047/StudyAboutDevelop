--계정. 대소문자 구분한다.
전역 데이터베이스 이름 : orcl
포트 : 1521
SYS 	: 오라클 db관리자, super USER.  DATA dictionary 를 가지고있음. 현재 비번 sys1234
SYSTEM 	: SYS와 동일하지만 DB를 생성할 권한이 없음. 현재 비번 sys1234
SCOTT 	: 오라클에서 제공하는 샘플 사용자 계정. 		기본 비번 : tiger
ggoomter	: 내가 주로 쓰는 계정
		

<관리자로 접속>
유저 id 치는곳에서  sys as sysdba


<비밀번호 만료 푸는것. 보통 180일>
1. 관리자로 접속
connect SYS as sysdba
2. 만료기한 확인
select * from dba_profiles where profile = 'DEFAULT';
3. 만료기한 무한으로 변경
alter profile default limit password_life_time unlimited;
4. 계정 락 해제
alter user 계정명 account unlock;


<비번 변경>
alter user 계정명 identified by 새비번;


