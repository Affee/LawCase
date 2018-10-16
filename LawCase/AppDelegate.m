//
//  AppDelegate.m
//  LawCase
//
//  Created by affee on 2018/9/18.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "AppDelegate.h"
#import "AFTabBarController.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [self changeRoot];
    return YES;
}
-(void)changeRoot{
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [[AFTabBarController alloc]init];
    [self.window makeKeyAndVisible];
}
//https://gitee.com/affee/WeiDianKe.git

@end
