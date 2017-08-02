//
//  BaseScrollViewController.m
//  Max
//
//  Created by 曹均华 on 2017/8/2.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "BaseScrollViewController.h"
#import <Masonry.h>

@interface BaseScrollViewController ()
@property(nonatomic,weak)UIScrollView *scrollView;
@end

@implementation BaseScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    [self.view addSubview:scrollView];
    _scrollView = scrollView;
}
- (void)setSubView:(int)count{
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
