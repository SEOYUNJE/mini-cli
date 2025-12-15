# 베이스 이미지 설정
FROM ubuntu:24.04

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 'mini.c' 파일을 컨테이너의 '/app' 디렉토리로 복사
# Dockerfile과 'mini.c'가 같은 위치에 있다고 가정합니다.
COPY mini.c /app/

# 패키지 목록 업데이트
RUN apt update

# GCC 설치 (오타 수정: atp -> apt)
# -y 옵션은 설치 시 확인 질문에 자동으로 'yes'로 응답하게 합니다.
RUN apt install -y gcc

# mini.c 파일을 컴파일하여 'mini' 실행 파일 생성
RUN gcc mini.c -o mini

# 컨테이너가 시작될 때 실행될 명령어
CMD ["./mini"]
