//
//  UIBarButtonItem+HQExtension.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/13.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "UIBarButtonItem+HQExtension.h"

@implementation UIBarButtonItem (HQExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action {
    
    // 创建button 按钮

    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentBackgroundImage.size;
    
    // 设置 执行方法
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];

    
    
    
    
    return [[self alloc] initWithCustomView:button];
    
}

@end
