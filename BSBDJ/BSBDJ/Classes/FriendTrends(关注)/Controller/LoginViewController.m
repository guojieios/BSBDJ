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

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.view insertSubview:self.bgImage atIndex:0];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(UIStatusBarStyle)preferredStatusBarStyle {
    
    return UIStatusBarStyleLightContent;
    
}





@end
