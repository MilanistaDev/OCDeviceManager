//
//  DeviceManager.m
//  OCDeviceManager
//
//  Created by 麻生 拓弥 on 2016/08/12.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "DeviceManager.h"
#include <sys/types.h>
#include <sys/sysctl.h>

#define CASE(str) if ([__c__ isEqualToString:(str)])
#define SWITCH(c) for (NSString *__c__=(c);__c__;__c__ = nil)
#define DEFAULT

@implementation DeviceManager

// モデル名を返す
+ (NSString *)currentDeviceIdentifierName {
    NSString *platformName = @"";
    size_t size = 0;
    if ((0 == sysctlbyname("hw.machine", NULL, &size, NULL, 0)) && (size > 0)) {
        char *machine = malloc(size);
        if (machine != NULL) {
            sysctlbyname("hw.machine", machine, &size, NULL, 0);
            platformName = [NSString stringWithCString:machine encoding:NSUTF8StringEncoding];
            free(machine);
        }
    }
    return platformName;
}

// 認識しやすい名前で返す
+ (DeviceType)currentDeviceType {
    NSString *machineName = [[self class] currentDeviceIdentifierName];
    DeviceType deviceType = Unknown;

    SWITCH (machineName) {
        CASE (@"iPhone4,1") {
            deviceType = iPhone4S;
            break;
        }
        CASE (@"iPhone5,1") {
            deviceType = iPhone5;
            break;
        }
        CASE (@"iPhone5,2") {
            deviceType = iPhone5;
            break;
        }
        CASE (@"iPhone5,3") {
            deviceType = iPhone5c;
            break;
        }
        CASE (@"iPhone5,4") {
            deviceType = iPhone5c;
            break;
        }
        CASE (@"iPhone6,1") {
            deviceType = iPhone5S;
            break;
        }
        CASE (@"iPhone6,2") {
            deviceType = iPhone5S;
            break;
        }
        CASE (@"iPhone7,1") {
            deviceType = iPhone6Plus;
            break;
        }
        CASE (@"iPhone7,2") {
            deviceType = iPhone6;
            break;
        }
        CASE (@"iPhone8,1") {
            deviceType = iPhone6s;
            break;
        }
        CASE (@"iPhone8,2") {
            deviceType = iPhone6sPlus;
            break;
        }
        CASE (@"iPhone8,4") {
            deviceType = iPhoneSE;
            break;
        }
        CASE (@"iPad2,5") {
            deviceType = iPadmini1;
            break;
        }
        CASE (@"iPad2,6") {
            deviceType = iPadmini1;
            break;
        }
        CASE (@"iPad2,7") {
            deviceType = iPadmini1;
            break;
        }
        CASE (@"iPad3,1") {
            deviceType = iPad3;
            break;
        }
        CASE (@"iPad3,2") {
            deviceType = iPad3;
            break;
        }
        CASE (@"iPad3,3") {
            deviceType = iPad3;
            break;
        }
        CASE (@"iPad3,4") {
            deviceType = iPad4;
            break;
        }
        CASE (@"iPad3,5") {
            deviceType = iPad4;
            break;
        }
        CASE (@"iPad3,6") {
            deviceType = iPad4;
            break;
        }
        CASE (@"iPad4,1") {
            deviceType = iPadAir;
            break;
        }
        CASE (@"iPad4,2") {
            deviceType = iPadAir;
            break;
        }
        CASE (@"iPad4,3") {
            deviceType = iPadAir;
            break;
        }
        CASE (@"iPad4,4") {
            deviceType = iPadmini2;
            break;
        }
        CASE (@"iPad4,5") {
            deviceType = iPadmini2;
            break;
        }
        CASE (@"iPad4,6") {
            deviceType = iPadmini2;
            break;
        }
        CASE (@"iPad4,7") {
            deviceType = iPadmini3;
            break;
        }
        CASE (@"iPad4,8") {
            deviceType = iPadmini3;
            break;
        }
        CASE (@"iPad4,9") {
            deviceType = iPadmini3;
            break;
        }
        CASE (@"iPad5,1") {
            deviceType = iPadmini4;
            break;
        }
        CASE (@"iPad5,2") {
            deviceType = iPadmini4;
            break;
        }
        CASE (@"iPad5,3") {
            deviceType = iPadAir2;
            break;
        }
        CASE (@"iPad5,4") {
            deviceType = iPadAir2;
            break;
        }
        CASE (@"iPad6,4") {
            deviceType = iPadPro9_7;
            break;
        }
        CASE (@"iPad6,7") {
            deviceType = iPadPro12_9;
            break;
        }
        CASE (@"iPad6,8") {
            deviceType = iPadPro12_9;
            break;
        }
        CASE (@"iPod5,1") {
            deviceType = iPodtouch5;
            break;
        }
        CASE (@"iPod5,1") {
            deviceType = iPodtouch6;
            break;
        }
        DEFAULT {
            deviceType = Unknown;
            break;
        }
    }
    return deviceType;
}

@end
