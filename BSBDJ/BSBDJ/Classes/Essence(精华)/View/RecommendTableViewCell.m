//
//  RecommendTableViewCell.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/18.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "RecommendTableViewCell.h"
#import "UIImageView+WebCache.h"


@interface RecommendTableViewCell()

// 图片
@property (weak, nonatomic) IBOutlet UIImageView *imageListImage;
// 标题
@property (weak, nonatomic) IBOutlet UILabel *themeNameLabel;
// 订阅量
@property (weak, nonatomic) IBOutlet UILabel *subNumberLabel;

@end

@implementation RecommendTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

-(void)setRecommendTag:(RecommendTag *)recommendTag {
    
    _recommendTag = recommendTag;
    
    [self.imageListImage sd_setImageWithURL:[NSURL URLWithString:recommendTag.image_list] placeholderImage:[UIImage imageNamed:@"defaultUserIcon"]];
    
    
    self.themeNameLabel.text = recommendTag.theme_name;
    
    // 订阅量
    NSString *number = nil;
    if (recommendTag.sub_number < 10000) {
        
        number = [NSString stringWithFormat:@"%zd 人订阅",recommendTag.sub_number];
        
        
    } else {
        
        
        number = [NSString stringWithFormat:@"%.1f万人订阅",recommendTag.sub_number / 10000.0];
        
    }
    
    
    self.subNumberLabel.text = number;
    
    
    
}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
