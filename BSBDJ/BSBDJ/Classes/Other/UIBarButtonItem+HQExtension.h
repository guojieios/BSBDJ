//
//  UIBarButtonItem+HQExtension.h
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/13.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HQExtension)

+ (instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;

@end
