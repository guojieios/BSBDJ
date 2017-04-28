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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}





@end
