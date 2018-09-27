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
    
    
}

@end
