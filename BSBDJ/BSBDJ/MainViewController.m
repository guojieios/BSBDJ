//
//  MainViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/11.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor blueColor];
    
    
    
    // 添加子控制器
    UIViewController *vc01 = [[UIViewController alloc] init];
    
    vc01.tabBarItem.title = @"精华";
    
    vc01.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    
    
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12.0];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    
    
    [vc01.tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    
    // 选中状态的
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    [vc01.tabBarItem setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    
    
    [self addChildViewController:vc01];
    
    
    
    
    
    
    
    
    
    
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
