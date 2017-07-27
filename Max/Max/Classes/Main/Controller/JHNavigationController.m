//
//  JHNavigationController.m
//  Max
//
//  Created by 曹均华 on 2017/7/27.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "JHNavigationController.h"

@interface JHNavigationController ()

@end

@implementation JHNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.navigationBar.backgroundColor = [UIColor blackColor];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
    // Do any additional setup after loading the view.
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
