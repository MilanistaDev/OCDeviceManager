//
//  ViewController.m
//  OCDeviceManager
//
//  Created by 麻生 拓弥 on 2016/08/12.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "ViewController.h"
#import "DeviceManager.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *modelNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *useriOSDeviceLabel;
@property (nonatomic, copy) NSDictionary *deviceDic;
@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];

    // DeviceList.plist からデータ取得
    NSBundle *bundle = [NSBundle mainBundle];
    // DeviceList.plist のファイルパスを指定
    NSString *path = [bundle pathForResource:@"DeviceList" ofType:@"plist"];
    // DeviceList.plistの中身データを取得して格納
    self.deviceDic = [NSDictionary dictionaryWithContentsOfFile:path];
}

#pragma mark - Button Action Method

/**
 * Check your device, and display the result
 */
- (IBAction)checkDeviceAction:(id)sender {

    // iPhone5,1 みたいな文字列取得
    NSString *modelName = [DeviceManager currentDeviceIdentifierName];
    self.modelNumberLabel.text = modelName;

    DeviceType deviceType = [DeviceManager currentDeviceType];

    NSString *deviceTypeStr = [NSString stringWithFormat:@"%ld", (long)deviceType];
    NSString *deviceName = [self.deviceDic objectForKey:deviceTypeStr];
    self.useriOSDeviceLabel.text = deviceName;
}

/**
 * When the button pushed, some change will happen only with a particular device.
 */
- (IBAction)CorrespondingDeviceCheck:(id)sender {

    DeviceType deviceType = [DeviceManager currentDeviceType];
    if (deviceType == iPhone5s) {
        self.view.backgroundColor = [UIColor greenColor];
    } else if (deviceType == iPhone6) {
        self.view.backgroundColor = [UIColor redColor];
    } else if (deviceType == iPhone6s) {
        self.view.backgroundColor = [UIColor blueColor];
    } else if (deviceType == iPadmini2) {
        self.view.backgroundColor = [UIColor cyanColor];
    }
}

#pragma mark - Not specail

/**
 * Memory Warning
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
