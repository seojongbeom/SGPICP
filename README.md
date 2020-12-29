HangulPlatformInputContextPlugin
=============

## 소개
HangulPlatformInputContextPlugin는 Qt 5를 위한 한글 입력 모듈입니다. 

HangulPlatformInputContextPlugin는 [qimhangul-qt5](https://github.com/peremen/qimhangul-qt5)의 코드를
기반으로 합니다.

## 변경 사항
- 입력 언어가 변경 될 때마다 QInputMethod 의  locacleChanged 시그너를 발생 시킵니다.
- QLocale locale() const 함수를 오버라이드 하여 추가 하였습니다.
- 불필요한 X11 코드는 제거 하였고 이로인해 임베디드 및 다른 환경에서도 동일하게 사용이 가능해졌습니다.

## 빌드 및 설치
빌드하기 위해서는 libhangul 패키지 1.0 버전 이상이 필요합니다.
libhangul은 다음 링크에서 구하실 수 있습니다.
https://github.com/libhangul/libhangul

## 빌드와 설치 방법

    $ mkdir build
    $ cd build
    $ qmake ../
    $ make
    # sudo make install


## 설정 방법
* QT_IM_MODULE=hangul:2 - 두벌식
* QT_IM_MODULE=hangul:3f - 세벌식 최종
* QT_IM_MODULE=hangul:39 - 세벌식 최종

이 외 libhangul에서 사용하는 자판을 사용하려면 hangul: 다음 libhangul 소스의
hangul/hangulinputcontext.c의 HangulKeyboard 구조체의 두 번째 인자를 지정하면
됩니다.

## 사용 방법
한영 전환키는 Shift+Space, Hangul키 입니다.
한자 변환키는 F9, Hangul_Hanja 키 입니다.
