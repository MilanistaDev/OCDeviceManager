//
//  ViewController.m
//  OCDeviceManager
//
//  Created by 麻生 拓弥 on 2016/08/12.
//  Copyright © 2016年 麻生 拓弥. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *modelNumberLabel;
@property (weak, nonatomic) IBOutlet UILabel *useriOSDeviceLabel;

@end

@implementation ViewController

#pragma mark - Life Cycle

- (void)viewDidLoad {
    [super viewDidLoad];

}

#pragma mark - Button Action Method

/**
 * Check your device, and display the result
 */
- (IBAction)checkDeviceAction:(id)sender {

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
