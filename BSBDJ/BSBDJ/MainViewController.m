//
//  MainViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/11.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "MainViewController.h"
#import "EssenceViewController.h"
#import "NewViewController.h"
#import "FriendTrendsViewController.h"
#import "MeViewController.h"
#import "HQTabBar.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [UINavigationBar appearance];
    
    
    //    self.view.backgroundColor = [UIColor blueColor];
    
    
    // 使用 UI_APPEARANCE_SELECTOR --- Appearance 统一设置tabBarItem
    // 设置正常状态的文字属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12.0];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    // 选中状态的
    NSMutableDictionary *selectAttrs = [NSMutableDictionary dictionary];
    selectAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selectAttrs[NSForegroundColorAttributeName] = [UIColor blackColor];
    
    
    UITabBarItem *item = [UITabBarItem appearance];
    // 设置文字属性
    
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    
    
    [item setTitleTextAttributes:selectAttrs forState:UIControlStateSelected];
    
   
    
    
    
    // 添加子控制器
    // 精华
    [self setUpChildVC:[[EssenceViewController alloc] init] title:@"精华" image:@"tabBar_essence_icon" selectedImage:@"tabBar_essence_click_icon"];
    
    
    
    // 设置图片 模式 - 取消系统渲染效果
    
    //        UIImage *image = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    //        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //        vc01.tabBarItem.selectedImage = image;
    
    
    // 新帖
    [self setUpChildVC:[[NewViewController alloc] init] title:@"新帖" image:@"tabBar_new_icon" selectedImage:@"tabBar_new_click_icon"];
    
    // 关注
    [self setUpChildVC:[[FriendTrendsViewController alloc] init] title:@"关注" image:@"tabBar_friendTrends_icon" selectedImage:@"tabBar_friendTrends_click_icon"];

    // 我
    [self setUpChildVC:[[MeViewController alloc] init] title:@"我" image:@"tabBar_me_icon" selectedImage:@"tabBar_me_click_icon"];
    
    
    // 添加发布按钮
//    self.tabBar = [[HQTabBar alloc] init];
    [self setValue:[[HQTabBar alloc] init] forKeyPath:@"tabBar"];
      
    
    
}

/**
 *  设置添加子控制器
 *
 *  @param vc            控制器
 *  @param title         控制器名称
 *  @param image         底部item图片
 *  @param selectedImage 底部item选中图片
 */
-(void)setUpChildVC:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage {
    
    vc = [[UIViewController alloc] init];
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [UIImage imageNamed:selectedImage];
    vc.view.backgroundColor = [UIColor colorWithRed:arc4random_uniform(256)/256.0 green:arc4random_uniform(256)/256.0 blue:arc4random_uniform(256)/256.0 alpha:1.0];
    
    [self addChildViewController:vc];
    
    
    
    
    
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
