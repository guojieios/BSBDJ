//
//  HQVerticalButton.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/5/4.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "HQVerticalButton.h"

@implementation HQVerticalButton


// 使用xib的时候，会调用的方法
-(void)awakeFromNib {
    [self setTextCentent];
    
}


// 图层
// 设置 子控件的 位置
-(void)layoutSubviews {
    [super layoutSubviews];
    
    
    // 图片的位置设置
    self.imageView.x = 0;
    self.imageView.y = 0;
    self.imageView.width = self.width;
    self.imageView.height = self.imageView.width;
    
    // 文字设置
    self.titleLabel.x = 0;
    self.titleLabel.y = self.imageView.height;
    self.titleLabel.width = self.width;
    self.titleLabel.height = self.height - self.titleLabel.y;
    
    
    
    
    
    
}

// 设置控件的frame
// 给子控件设置属性 ：initWithFrame:
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // 设置子控件属性
        
        [self setTextCentent];
        
        
    }
    
    
    return self;
    
    
    
}


#pragma mark - 文字居中
-(void)setTextCentent {
    
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
}




@end
