//
//  MineViewController.m
//  LawCase
//
//  Created by affee on 2018/9/27.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "MineViewController.h"
#import "AFMineHeaderView.h"


@interface MineViewController ()<UITableViewDelegate,UITableViewDataSource>
/*缺少ViewModel*/
@property (nonatomic,strong)UITableView *tableView;

@property (nonatomic, strong)NSArray *titleView;

@property (nonatomic, strong)AFMineHeaderView *headerView;

@property (nonatomic, strong)UIButton *setBtn;


@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.customNavBar.title = @"我的";
    [self.customNavBar wr_setTintColor:KKWhitePurple];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
