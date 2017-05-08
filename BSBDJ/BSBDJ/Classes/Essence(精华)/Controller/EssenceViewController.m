//
//  EssenceViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/13.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "EssenceViewController.h"
#import "RecommendTagsViewController.h"


@interface EssenceViewController ()

// 顶部标签提示
@property (nonatomic, weak) UIView *redView;

@property (weak ,nonatomic) UIButton *selectButton;


@end

@implementation EssenceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
   
    // 设置导航栏
    [self setNav];
    
    // 设置顶部标签
    [self setTitleView];
   
}




//顶部标签视图
-(void)setTitleView {

    
    // 创建View
    UIView *titleView = [[UIView alloc] init];
    titleView.width = self.view.width;
    titleView.height = 35;
    titleView.y = 64;
    // 设置背景颜色 半透明
    titleView.backgroundColor = [UIColor colorWithWhite:1.0 alpha:0.5];
//    titleView.backgroundColor = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
//    titleView.backgroundColor = [[UIColor whiteColor] colorWithAlphaComponent:0.5];
    
    // 设置透明度 : View中的内容的透明度同样会一起被设置
//    titleView.alpha = 0.3;
    
    [self.view addSubview:titleView];
    
    
    
    // 底部红色线
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    
    
    redView.height = 2;
    
    redView.y = titleView.height - redView.height;
    
    [titleView addSubview:redView];
    
    self.redView = redView;

    
    
    // 设置内部子标签
    NSArray *titles = @[@"全部",@"视频",@"声音",@"图片",@"段子"];
    CGFloat titleHeight = titleView.height;
    CGFloat titleWidth = titleView.width / titles.count;

    for (int i = 0; i < titles.count; i++) {
        
        // 创建button
        UIButton *button = [[UIButton alloc] init];
        button.height = titleHeight;
        button.width = titleWidth;
        button.x = i * titleWidth;
        
        // 设置文字
        [button setTitle:titles[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
        
        [button setTitleColor:[UIColor redColor] forState:UIControlStateDisabled];
        button.titleLabel.font = [UIFont systemFontOfSize:14.0];
        
        // 点击事件
        [button addTarget:self action:@selector(titleButtonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        
        [titleView addSubview:button];
        
        // 设置初始化状态
        if (i == 0) {
            
            // 设置状态
            button.enabled = NO;
            
            
            self.selectButton = button;
            
            
            [button.titleLabel sizeToFit];
            
            // 设置 红线的位置
            self.redView.width = button.titleLabel.width;
            self.redView.centerX = button.centerX;
            
                    }

        
    }
    
    
    
    
    
}



-(void)titleButtonClick:(UIButton *)button {
    
    
    self.selectButton.enabled = YES;
    // 设置状态
    button.enabled = NO;
    
    
    self.selectButton = button;
    
    
    
  [UIView animateWithDuration:0.25 animations:^{
      // 设置 红线的位置
      self.redView.width = button.titleLabel.width;
      self.redView.centerX = button.centerX;
      
      
  }];
    
    
}



-(void)setNav {
    // 设置导航栏
    // 设置导航文字
    //    self.navigationItem.title = @"精华";
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" target:self action:@selector(leftButtonClick)];
    

}




-(void)leftButtonClick {
    
    RecommendTagsViewController *vc = [[RecommendTagsViewController alloc] init];
    
 
    
    [self.navigationController pushViewController:vc animated:YES];
    
    
    
    
    
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
