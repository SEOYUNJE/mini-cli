# Mini CLI Tool 제작 및 Docker 기반 배포 프로젝트

### To-do List
- [X] ~~Linux 실행 실습~~
- [X] ~~Dockerfile 작성 + 실행 성공~~
- [X] ~~GitHub Commit/Branch/Merge~~
- [X] ~~README 문서 품질~~

## 1) Mini 프로그램 작성

``` c
# include <stdio.h>

int main() {
  printf("Hello from Mini C Program!!!\n");
  return 0;
}
```

## 2) Linux에서 실행 실습

### 개발 환경 구성

> _본 프로젝트는 `VirtualBox` 가상 머신(Ubuntu 22.04) 환경에서 개발 및 테스트 진행_

```bash
sudo apt update
sudo apt install gcc
```

### 실행 결과
<img width="337" height="91" alt="image" src="https://github.com/user-attachments/assets/28082d55-8fe4-418d-97d6-564b30a580c0" />


## 3) Dockerfile 작성 및 이미지 실행

> **Dockerfile Command**

| Command | 상세 설명 |
| ------- | --------- |
| *FROM* | <ins/> 컨테이너 환경의 기반이 되는 컨테이너 이미지 지정 </ins> |
| *RUN* | <ins/> 컨테이너 환경 구성을 위해 필요한 명령 명시 </ins> |
| *VOLUME* | <ins/> 컨테이너 외부와 공유할 수 있는 디렉터리 지정 </ins> |
| *WORKDIR* | <ins/> 컨테이너 내 작업 디렉터리를 지정하는 커맨드 </ins> |
| *CMD* | <ins/> docker run 명령으로 컨테이너 실행 시 내부에서 실행될 작업 지정 </ins>|
| *EXPOSE* | <ins/> 컨테이너에서 오픈할 포트 지정 </ins>|


### Dockerfile 작성

```Dockerfile
FROM ubuntu:24.04
WORKDIR /app
COPY mini.c /app/
RUN apt update
RUN apt install -y gcc
RUN gcc mini.c -o mini
CMD ["./mini"]
```
