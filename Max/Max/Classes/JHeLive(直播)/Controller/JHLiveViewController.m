//
//  JHLiveViewController.m
//  Max
//
//  Created by 曹均华 on 2017/7/27.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "JHLiveViewController.h"

@interface JHLiveViewController ()

@end

@implementation JHLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    [self setNaviagtionBarImage];
}
- (void)setNaviagtionBarImage {
    UIImage *leftImg = [UIImage imageNamed:@"反馈_20x20_"];
    UIButton *leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    [leftBtn setImage:leftImg forState:UIControlStateNormal];
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = leftItem;
    [leftBtn addTarget:self action:@selector(clickLeftImg) forControlEvents:UIControlEventTouchUpInside];
    
    UIImageView *titleImg = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"normal_max_bottom_logo_48x16_"]];
    self.navigationItem.titleView= titleImg;
}

#pragma mark -- 点击事件
- (void)clickLeftImg {
    NSLog(@"点击了左侧图片");
}
- (void)clickRightImg {
    NSLog(@"点击了右侧图片");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
