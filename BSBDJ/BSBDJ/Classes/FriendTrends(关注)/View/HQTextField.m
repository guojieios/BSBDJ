//
//  HQTextField.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/28.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "HQTextField.h"
#import <objc/runtime.h>

@implementation HQTextField


// textField 中文字/位置发生变化的时候 调用
//-(void)drawPlaceholderInRect:(CGRect)rect {
//    
//    
//    [self.placeholder drawInRect:CGRectMake(0, 15, 50, 30) withAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
//    
//}



// runtime  -- >  运行时 -> 苹果官方的一套 C语言库
// 可以接触到底层东西


+(void)initialize {
    
    unsigned int count = 0;
    
    // 复制出成员变量
    Ivar *ivars = class_copyIvarList([UITextField class], &count);
    
    
    for (int i = 0; i < count; i++) {
        //取出成员变量
        Ivar ivar = *(ivars + i);
        
        
        
        // 打印信息
        HQLog(@"%s",ivar_getName(ivar));
        
        
        
        
    }
    

    
    
}


-(void)awakeFromNib {
    
    // 设置光标的颜色
    self.tintColor = [UIColor whiteColor];
    // 设置文字颜色
    self.textColor = self.tintColor;
    
    
    // kvc - 访问成员变量的
    [self setValue:[UIColor grayColor] forKeyPath:@"_placeholderLabel.textColor"];
    
}




@end
