//
//  EssenceViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/13.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "EssenceViewController.h"

@interface EssenceViewController ()

@end

@implementation EssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    
    // 设置导航栏
    // 设置导航文字
//    self.navigationItem.title = @"精华";
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(leftButtonClick)];
    
    
    
   
}



-(void)leftButtonClick {
    
    NSLog(@"点击");
    
    
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
