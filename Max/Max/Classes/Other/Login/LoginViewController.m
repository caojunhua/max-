//
//  LoginViewController.m
//  Max
//
//  Created by 曹均华 on 2017/7/31.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

static int cornerRadius = 5;//圆角

- (void)viewDidLoad {
    [super viewDidLoad];
    self.registerBtn.layer.cornerRadius = cornerRadius;
    self.loginBtn.layer.cornerRadius = cornerRadius;
    
    // Do any additional setup after loading the view from its nib.
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
