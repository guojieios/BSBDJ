//
//  RecommendTag.h
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/18.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RecommendTag : NSObject
/**
 *  标签名称
 */
@property (nonatomic, copy) NSString * theme_name;
/**
 *  图片
 */
@property (nonatomic, copy) NSString * image_list;
/**
 *  订阅量
 */
@property (nonatomic, copy) NSString * sub_number;



@end
