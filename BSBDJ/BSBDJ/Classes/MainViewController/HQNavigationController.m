//
//  HQNavigationController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/14.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "HQNavigationController.h"

@implementation HQNavigationController


// 当第一次使用该类的时候，会调用一次
+(void)initialize {
    
    
    // 设置导航栏背景
    UINavigationBar *bar = [UINavigationBar appearance];
    
    [bar setBackgroundImage:[UIImage imageNamed:@"navigationbarBackgroundWhite"] forBarMetrics:UIBarMetricsDefault];
    
    NSLog(@"%s",__func__);

    
    
}




// 重写系统的方法  --- 冲掉系统原来的方法执行 - 优先执行重写的方法
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    
    // 创建一个button ，包装成backBarButton
    if (self.childViewControllers.count > 0) {  //  如果push不是第一个控制器
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"返回" forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [button setImage:[UIImage imageNamed:@"navigationButtonReturnClick"] forState:UIControlStateHighlighted];
        button.size = CGSizeMake(70, 30);
        
        
        // 设置文字
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        
        // 让button 按钮中的内容左对齐
        button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        // 设置偏移量
        button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
        
        
        [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
        
        
        // 取消底部工具栏
        viewController.hidesBottomBarWhenPushed = YES;
        
        
    }
    
    [super pushViewController:viewController animated:animated];

    
}



-(void)back {
    
    [self popViewControllerAnimated:YES];
    
    
}



@end
