//
//  JHTabBarController.m
//  Max
//
//  Created by 曹均华 on 2017/7/26.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "JHTabBarController.h"
#import "JHMeViewController.h"
#import "JHDataViewController.h"
#import "JHGuessViewController.h"
#import "JHFindViewController.h"
#import "JHLiveViewController.h"
#import "JHNavigationController.h"
#import "UIImage+Image.h"

@interface JHTabBarController ()

@end

@implementation JHTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    //1.添加所有子控制器
    [self addAllChildVC];
    //2.设置tabBar
    [self setTabBar];
}
#pragma mark -- 添加所有子控制器
- (void)addAllChildVC {
    //我
    JHMeViewController *meViewController = [[JHMeViewController alloc] init];
    JHNavigationController *firstNavigationController = [[JHNavigationController alloc] initWithRootViewController:meViewController];
    [self addChildViewController:firstNavigationController];
    //数据
    JHDataViewController *dataViewController = [[JHDataViewController alloc] init];
    JHNavigationController *secondNavigationController = [[JHNavigationController alloc] initWithRootViewController:dataViewController];
    [self addChildViewController:secondNavigationController];
    //竞猜
    JHGuessViewController *guessViewController = [[JHGuessViewController alloc] init];
    JHNavigationController *thirdNavigationController = [[JHNavigationController alloc] initWithRootViewController:guessViewController];
    [self addChildViewController:thirdNavigationController];
    //发现
    JHFindViewController *findViewController = [[JHFindViewController alloc] init];
    JHNavigationController *fourthNavigationController = [[JHNavigationController alloc] initWithRootViewController:findViewController];
    [self addChildViewController:fourthNavigationController];
    //直播
    JHLiveViewController *liveViewController = [[JHLiveViewController alloc] init];
    JHNavigationController *fifthNavigationController = [[JHNavigationController alloc] initWithRootViewController:liveViewController];
    [self addChildViewController:fifthNavigationController];
    
}
#pragma mark -- 设置tabBar
- (void)setTabBar {
    UINavigationController *oneVC = self.childViewControllers[0];
    oneVC.tabBarItem.title = @"我";
    oneVC.tabBarItem.image = [UIImage imageWithOriginalImageName:@"我1_26x26_"];
    oneVC.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"我2_26x26_"];
    oneVC.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    
    UINavigationController *twoVC = self.childViewControllers[1];
    twoVC.tabBarItem.title = @"数据";
    twoVC.tabBarItem.image = [UIImage imageWithOriginalImageName:@"数据1_26x26_"];
    twoVC.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"数据2_26x26_"];
    
    UINavigationController *thirdVC = self.childViewControllers[2];
    thirdVC.tabBarItem.title = @"竞猜";
    thirdVC.tabBarItem.image = [UIImage imageWithOriginalImageName:@"活动1_26x26_"];
    thirdVC.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"活动2_26x26_"];
    
    UINavigationController *fourVC = self.childViewControllers[3];
    fourVC.tabBarItem.title = @"发现";
    fourVC.tabBarItem.image = [UIImage imageWithOriginalImageName:@"发现_26x26_"];
    fourVC.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"发现选中_26x26_"];
    
    UINavigationController *fiveVC = self.childViewControllers[4];
    fiveVC.tabBarItem.title = @"直播";
    fiveVC.tabBarItem.image = [UIImage imageWithOriginalImageName:@"视频1_26x26_"];
    fiveVC.tabBarItem.selectedImage = [UIImage imageWithOriginalImageName:@"视频2_26x26_"];
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
