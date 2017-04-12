//
//  HQTabBar.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/12.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "HQTabBar.h"

@interface HQTabBar()


// 创建 发布按钮
@property (nonatomic, strong) UIButton * publishButton;




@end


@implementation HQTabBar

// 创建控件
-(instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        
        UIButton *publishButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_icon"] forState:UIControlStateNormal];
        [publishButton setBackgroundImage:[UIImage imageNamed:@"tabBar_publish_click_icon"] forState:UIControlStateSelected];
        
        [self addSubview:publishButton];
        
        self.publishButton = publishButton;
        
        
        
    }
    
    
    return self;
}



// 设置控件的布局
-(void)layoutSubviews {
    [super layoutSubviews];
    
    // 设置button 的大小
    self.publishButton.frame = CGRectMake(0, 0, self.publishButton.currentBackgroundImage.size.width, self.publishButton.currentBackgroundImage.size.height);
    self.publishButton.center = CGPointMake(self.frame.size.width * 0.5, self.frame.size.height * 0.5);
    
    
    
    
    CGFloat buttonY = 0;
    CGFloat buttonW = self.frame.size.width / 5;
    CGFloat buttonH = self.frame.size.height;
    
    NSInteger index = 0;
    // 修改其他item的位置
    for (UIView *button in self.subviews) {
        
        if (![button isKindOfClass:NSClassFromString(@"UITabBarButton")]) continue;
        
        CGFloat buttonX = buttonW * index;
        
        
        button.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
        
        
        // 增加 索引
        index ++ ;
        
        
    }
    
    
    
    
    
    
    
    
    
    
}




@end
