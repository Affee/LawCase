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

@property(nonatomic,strong)NSArray              *titleArray;

@property (nonatomic, strong)AFMineHeaderView *headerView;

@property (nonatomic, strong)UIButton *setBtn;

@property (nonatomic, assign)BOOL  dismissFlag;


@end

@implementation MineViewController
//@dynamic viewModel;


- (void)viewDidLoad {
    [super viewDidLoad];
    self.customNavBar.title = @"我的";
    [self.customNavBar wr_setTintColor:KKWhitePurple];
    self.automaticallyAdjustsScrollViewInsets = NO;

    [self initView];

}

-(void)initView{
    [self.view addSubview:self.tableView];
    _titleArray = @[@"推荐",@"意见",@"热线",@"意见反馈"];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//    [self.tableView registerNib:[UINib nibWithNibName:@"" bundle:<#(nullable NSBundle *)bundleOrNil#>] forCellReuseIdentifier:<#(NSString *)identifier#>];
}

#pragma mark - tableViewDelegate
-(void)tableView:(UITableView *)tableView:didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *footView;
    if(section ==2)
    {
        footView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, KKScreenWidth, 0.05)];

    }
}

@end
