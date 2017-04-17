//
//  FriendTrendsViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/11.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "FriendTrendsViewController.h"
#import "RecommendViewController.h"

@interface FriendTrendsViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation FriendTrendsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
 
    
    
    // 设置导航栏
    // 设置导航文字
    //    self.navigationItem.title = @"精华";
    self.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
  
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" target:self action:@selector(friendButtonClick)];
    
    
}



-(void)friendButtonClick {
    
    
    // 跳转到推荐模块
    RecommendViewController *vc = [[RecommendViewController alloc] init];
    
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
