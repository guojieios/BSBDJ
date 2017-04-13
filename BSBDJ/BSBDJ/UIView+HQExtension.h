//
//  UIView+HQExtension.h
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/12.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (HQExtension)


@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGSize size;

// 分类中 ： 如果定义属性，不能生成 _ 成员变量 以及 实现

@end
