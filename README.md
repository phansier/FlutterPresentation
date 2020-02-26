# FlutterPresentation
A demo presentation project for Flutter prototypes presentation on [404Fest-2019](https://2019.404fest.ru/program/reports/mobile-applications/)

## You are welcome to ask your questions or suggestions in Issues!
[Presentation in PDF](https://yadi.sk/i/adGA8iq55ptVZw)

[Video](https://youtu.be/zG8OxjCKCe0)

This project can be assembled for:
- Android, iOS
- Web - see how it works: https://beryukhov.ru/FlutterPresentation/
- MacOs (Used in presentation)
- Linux, Windows

[Previous presentation about Flutter & prototype of Fluber - Flutter app](https://github.com/AndreySBer/flutter_app_example)


## Building sample
This sample project is forked from https://github.com/google/flutter-desktop-embedding and edited with required UI code

Before trying to build **Web**  run this:
>flutter config --enable-web

Before trying to build **MacOs** run this:
>flutter config --enable-macos-desktop

Then inside /macos
>pod update

In additional to usual
```
>flutter upgrade
>flutter doctor
>flutter packages get
>flutter packages upgrade
>flutter run
```

Windows and Linux are not tested
