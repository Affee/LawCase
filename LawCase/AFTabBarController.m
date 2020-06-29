//
//  AFTabBarController.m
//  LawCase
//
//  Created by affee on 2018/9/21.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "AFTabBarController.h"
#import "CaseViewController.h"
#import "MessageViewController.h"
#import "MineViewController.h"
#import "AFBaseNavigationController.h"



@interface AFTabBarController ()

@end

@implementation AFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
     [self addChildVC];
    self.view.backgroundColor = [UIColor greenColor];
}

-(void)addChildVC
{
    NSArray *norImage = @[@"首页icon copy",@"服务icon copy",@"我的icon copy"];
    NSArray *selImage = @[@"首页icon_pressed copy",@"服务icon_pressed copy",@"我的icon_pressed copy"];
    NSArray *childVC =  @[@"CaseViewController",@"MessageViewController",@"MineViewController"];
    NSArray *titleArray = @[@"办案",@"消息",@"我的"];
    int a = 10;
    int mmmm = 12211412;
    NSString *str = @"哈哈哈哈哈";
    NSString *barnac = @"ssssdd";
    NSString *barna = @"ssssddsada2";

    
    NSMutableArray *arrayM = [NSMutableArray array];
    for (int i = 0; i < childVC.count; i++) {
        Class cls  = NSClassFromString(childVC[i]);
        UIViewController * vc = [[cls alloc]init];
        vc.tabBarItem.title = titleArray[i];
        vc.tabBarItem.image = [UIImage imageNamed:norImage[i]];
        AFBaseNavigationController *navc = [[UINavigationController alloc] initWithRootViewController:vc];
        navc.navigationBar.translucent = NO;
        //设置原始图片
        vc.tabBarItem.selectedImage = [[UIImage imageNamed:selImage[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //            vc.tabBarItem.imageInsets = UIEdgeInsetsMake(6, 0, -6, 0);
        [arrayM addObject:navc];
    }

    
    [[UITabBarItem appearance]setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:11], NSForegroundColorAttributeName:[UIColor lightGrayColor]}forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:11], NSForegroundColorAttributeName:[UIColor blueColor]} forState:UIControlStateSelected];
    self.viewControllers = arrayM;
}


@end
