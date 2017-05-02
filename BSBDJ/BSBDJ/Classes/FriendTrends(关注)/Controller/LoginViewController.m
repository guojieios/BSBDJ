//
//  LoginViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/19.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImage;

@property (weak, nonatomic) IBOutlet UIButton *LoginButton;


@property (weak, nonatomic) IBOutlet UITextField *phoneTextFiled;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *LoginMarginLeftconstraint;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.view insertSubview:self.bgImage atIndex:0];
    
    
    // 增加 圆角
//    self.LoginButton.layer.cornerRadius = 5;
//    self.LoginButton.layer.masksToBounds = YES;
    
    // 富文本技术
    // 1/
//    NSMutableAttributedString *placeHolder = [[NSMutableAttributedString alloc] initWithString:@"手机号"];
//    
//    
//    [placeHolder setAttributes:@{
//                                 NSForegroundColorAttributeName : [UIColor whiteColor]
//                                 } range:NSMakeRange(0, 3)];
//    
//    
//    self.phoneTextFiled.attributedPlaceholder = placeHolder;
    
    
    // 2/
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    dict[NSForegroundColorAttributeName] = [UIColor whiteColor];
//    NSAttributedString *placeholder = [[NSAttributedString alloc] initWithString:@"手机号" attributes:dict];
//    self.phoneTextFiled.attributedPlaceholder = placeholder;
//    self.phoneTextFiled.tintColor = [UIColor whiteColor];
    
    
    
    
    
    
    
    
    
}
- (IBAction)LoginButtonClick:(UIButton *)button {
    
    // 退出键盘
    [self.view endEditing:YES];
    
    
    
    // 判断
    if (self.LoginMarginLeftconstraint.constant == 0) { // 登录界面
        
        self.LoginMarginLeftconstraint.constant = -self.view.width;
        
        button.selected = YES;
        
    } else {  // 注册界面
        
        self.LoginMarginLeftconstraint.constant = 0;
        
        button.selected = NO;
        
    }
    
    
    
    // 动画
    [UIView animateWithDuration:0.25 animations:^{
        [self.view layoutIfNeeded];
    }];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}





@end
