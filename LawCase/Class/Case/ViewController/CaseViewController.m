//
//  CaseViewController.m
//  LawCase
//
//  Created by affee on 2018/9/27.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "CaseViewController.h"
#import "CaseDetailVC.h"

@interface CaseViewController ()

@end

@implementation CaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customNavBar.title = @"案件";
    self.customNavBar.tintColor =  KKRGBA(240, 240, 240, 1);
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CaseDetailVC *caseDet = [[CaseDetailVC alloc]init];
    caseDet.view.backgroundColor = [UIColor blueColor];
    caseDet.customNavBar.title = @"案件详情";
    [self.navigationController pushViewController:caseDet animated:YES];
}

@end
