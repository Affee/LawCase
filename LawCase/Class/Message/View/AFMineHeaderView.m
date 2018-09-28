//
//  AFMineHeaderView.m
//  LawCase
//
//  Created by affee on 2018/9/27.
//  Copyright © 2018年 affee. All rights reserved.
//

#import "AFMineHeaderView.h"

@implementation AFMineHeaderView
-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self configView];
    }
    return self;
}

-(void)configView
{
    @weakify(self);
    UIImageView *bgImg = [[UIImageView alloc]init];
    bgImg.image = [UIImage imageNamed:@"NavBarBG"];
    [self addSubview:bgImg];
    [bgImg mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.top.equalTo(self);
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.bottom.equalTo(self);
    }];
    
    self.w_headImage = [[UIImageView alloc]init];
    self.w_headImage.image = [UIImage imageNamed:@"face"];
    _w_headImage.layer.cornerRadius = 75/2.0;
    _w_headImage.layer.masksToBounds = YES;
//    self.w_headImage.hidden = YES;
    [self addSubview:self.w_headImage];

    [self.w_headImage mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.top.equalTo(self).offset(64);
        make.left.equalTo(self).offset(25);
        make.width.mas_equalTo(75);
        make.height.mas_equalTo(75);
    }];

    self.w_noLoginHead = [[UIImageView alloc] init];
    self.w_noLoginHead = [UIImage imageNamed:@"face"];
    [self addSubview:self.w_noLoginHead];
    [self.w_noLoginHead mas_makeConstraints:^(MASConstraintMaker *make) {
       @strongify(self);
       make.centerX.equalTo(self);
       make.centerY.equalTo(self.w_headImage);
       make.size.equalTo(self.w_headImage);
    }];

    self.w_nickNameLabel = [[UILabel alloc] init];
    _w_nickNameLabel.textColor = KKRGBA(230, 230, 230, 1);
    _w_nickNameLabel.font = [UIFont affeeNormalFont:16];
    [self addSubview:self.w_nickNameLabel];
    [self.w_nickNameLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.bottom.equalTo(self.w_headImage.mas_bottom).offset(-35);
        make.left.equalTo(self.w_headImage.mas_right).offset(10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];

    self.w_phoneNum = [[UILabel alloc] init];
    _w_phoneNum.textColor = KKColorLightGray;
    _w_phoneNum.font = [UIFont affeeNormalFont:16];
    [self addSubview:self.w_phoneNum];
    [self.w_phoneNum mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.left.equalTo(self.w_headImage.mas_right).offset(10);
        make.bottom.equalTo(self.w_headImage).offset(-10);
        make.width.mas_equalTo(120);
        make.height.mas_equalTo(20);
    }];

    self.w_right = [[UIImageView alloc] init];
    _w_right.image = [UIImage imageNamed:@"w_right@3x"];
    [self addSubview:_w_right];
    [_w_right mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.right.equalTo(self).offset(-35);
        make.centerY.equalTo(self.w_headImage);
        make.height.mas_equalTo(20);
        make.width.mas_equalTo(20);
    }];

        UIButton *topBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        topBtn.backgroundColor = [UIColor yellowColor];
    [topBtn addTarget:self action:@selector(topBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:topBtn];
    [topBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       @strongify(self);
       make.left.equalTo(self);
       make.right.equalTo(self);
       make.top.equalTo(self).offset(64);
       make.height.mas_equalTo(75);
    }];

    UIView *bottomBG = [[UIView alloc] init];
    bottomBG.backgroundColor = KKColorPurple;
    [self addSubview:bottomBG];
    [bottomBG mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self);
        make.bottom.equalTo(self);
        make.left.equalTo(self);
        make.right.equalTo(self);
        make.height.equalTo(@40);
    }];




}

@end
