//
//  RecommendTagsViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/18.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "RecommendTagsViewController.h"
#import "AFNetworking.h"
#import "SVProgressHUD.h"
#import "MJExtension.h"
#import "RecommendTag.h"
#import "RecommendTableViewCell.h"


@interface RecommendTagsViewController ()

@property (nonatomic, strong) NSArray * tags;


@end

static NSString * const TagCell = @"TagCell";

@implementation RecommendTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
    [self setUpNavigation];
    
    
    [self loadTags];
    
    
}


/**
 *  设置导航栏
 */
-(void)setUpNavigation {
    
    // 设置标题
    self.title = @"推荐标签";
    
    // 注册
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([RecommendTableViewCell class]) bundle:nil] forCellReuseIdentifier:TagCell];
    
    
    // 行高
    self.tableView.rowHeight = 70;
    
    
    // 取消下划线
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    
}



/**
 *  网络工具 - 获取数据
 */
-(void)loadTags {
    
    
    // 提示
    [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeBlack];
    
    
    // 参数
    NSMutableDictionary *parameter = [NSMutableDictionary dictionary];
    parameter[@"a"] = @"tag_recommend";
    parameter[@"action"] = @"sub";
    parameter[@"c"] = @"topic";
    
    
    
    // 发送请求
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:parameter progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        // 字典转模型
        self.tags = [RecommendTag mj_objectArrayWithKeyValuesArray:responseObject];
        
        [self.tableView reloadData];
        
        HQLog(@"%@",responseObject);
        
        [SVProgressHUD showSuccessWithStatus:@"加载成功！"];
        [SVProgressHUD dismiss];
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        HQLog(@"%@",error);
        
        [SVProgressHUD showErrorWithStatus:@"加载失败！"];
    }];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.tags.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    
    RecommendTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:TagCell];
    
    
    cell.recommendTag = self.tags[indexPath.row];
    
    
    
    return cell;
}


@end
