//
//  LoginsViewController.m
//  Max
//
//  Created by 曹均华 on 2017/7/31.
//  Copyright © 2017年 caojunhua. All rights reserved.
//

#import "LoginsViewController.h"
#import "LoginViewController.h"

@interface LoginsViewController ()
@property (nonatomic,strong)LoginViewController *loginViewController;
@end

@implementation LoginsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _loginViewController = [[LoginViewController alloc] init];
    [self showLogin];
    
    // Do any additional setup after loading the view from its nib.
}
- (void)showLogin {
    CATransition *animation = [CATransition animation];
    animation.duration = 1.0;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    animation.type = kCATransitionMoveIn;
    animation.subtype = kCATransitionFromTop;
    [self.view.layer addAnimation:animation forKey:@"animation"];
    [self pushViewController:_loginViewController animated:YES];
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
