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
