//
//  DeviceManager.h
//  OCDeviceManager
//
//  Created by 麻生 拓弥 on 2016/08/12.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import <Foundation/Foundation.h>

// アプリ対応端末 enum
typedef NS_ENUM (NSInteger, DeviceType) {
    Unknown = 0,
    iPhone4S,
    iPhone5,
    iPhone5c,
    iPhone5S,
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

@interface DeviceManager : NSObject

/**
 * iOS端末のモデル名を返す
 * 例：iPhone5,1
 * @return iOS端末のモデル名
 */
+ (NSString *)currentDeviceIdentifierName;

/**
 * iOS端末の種類を返す(enum対応)
 * @return 対応する端末のenum値
 */
+ (DeviceType)currentDeviceType;

@end