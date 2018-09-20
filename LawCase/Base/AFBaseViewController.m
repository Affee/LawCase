//
//  AFBaseViewController.m
//  LawCase
//
//  Created by affee on 2018/9/20.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "AFBaseViewController.h"
#import "WRNavigationBar.h"

@interface AFBaseViewController ()

@end

@implementation AFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupNavBar];
}

-(void)setupNavBar
{
    [self.view addSubview:self.customNavBar];
    // 设置自定义导航栏背景图片
    self.customNavBar.barBackgroundImage = [UIImage imageNamed:@"NavBarBG"];
    //    [self wr_setNavBarTintColor:[UIColor yellowColor]];
    
    // 设置自定义导航栏标题颜色
    self.customNavBar.titleLabelColor = [UIColor yellowColor];
    if (self.navigationController.childViewControllers.count != 1) {
        //        [self.customNavBar wr_setLeftButtonWithTitle:@"<" titleColor:[UIColor whiteColor]];
        //        wr_setLeftButtonWithImage
        [self.customNavBar wr_setLeftButtonWithImage:[UIImage imageNamed:@"back"]];
    }
    
}

- (WRCustomNavigationBar *)customNavBar
{
    if (_customNavBar == nil) {
        _customNavBar = [WRCustomNavigationBar CustomNavigationBar];
    }
    return _customNavBar;
}
@end
