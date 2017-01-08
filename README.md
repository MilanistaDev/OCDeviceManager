# About this Sample code

## Summary
English Version of readme is not completed. After writing, add explanation. So sorry.



## 概要
このアプリは，バグで端末依存とかで，ある端末のみ別の対応をしなければならないといったときに直感的に対処できるように作ったデバイスチェッカーです。
Objective-C で書かれています。Swift 版は出来次第アップロードします。
Swift 3 版です。

[Swift 3 Version](https://github.com/MilanistaDev/DeviceManager)


![ScreenShot](https://2.bp.blogspot.com/-2Hrr8oEwuvw/WHKeddOIIGI/AAAAAAAAEDA/Q4r0VaOjsf0JM9FgkzbPiWdfjBiervGGgCLcB/s1600/ScrrenShot.jpg "ScreenShot")


## 使い方

1. 下記の3ファイルをプロジェクトに追加します。

> DeviceList.plist

> DeviceManager.h

> DeviceManager.m

2. 使用するクラスファイルで下記のように使用します。

```ViewController.m
// 追加します
# import DeviceManager.h
…

// 端末の種類を取得
DeviceType deviceType = [DeviceManager currentDeviceType];
// enum で直感的に判定できるようにしました
if (deviceType == iPhone6) {
    self.view.backgroundColor = [UIColor redColor];
}
```

端末識別に使う enum は下記で定義されています。
対応させるアプリの端末によって適宜追加修正が必要なのが，
よくない点です。

```DeviceManager.h

// アプリ対応端末 enum
typedef NS_ENUM (NSInteger, DeviceType) {
    Unknown = 0,
    iPhone4S,
    iPhone5,
    iPhone5c,
    iPhone5s,
    iPhone6Plus,
    iPhone6,
    iPhone6s,
    iPhone6sPlus,
    iPhoneSE,
    iPad3,
    iPad4,
    iPadAir,
    iPadAir2,
    iPadmini1,
    iPadmini2,
    iPadmini3,
    iPadmini4,
    iPadPro9_7,
    iPadPro12_9,
    iPodtouch5,
    iPodtouch6,
};

```

以上です。
もっとスマートな判定の仕方等あればご指摘お願いいたします。
