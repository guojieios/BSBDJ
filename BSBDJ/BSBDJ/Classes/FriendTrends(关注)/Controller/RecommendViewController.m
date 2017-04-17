//
//  RecommendViewController.m
//  BSBDJ
//
//  Created by Jerry_hqyj on 17/4/17.
//  Copyright © 2017年 Jerry_hqyj. All rights reserved.
//

#import "RecommendViewController.h"


#define kAPPW [UIScreen mainScreen].bounds.size.width
#define kAPPH [UIScreen mainScreen].bounds.size.height

@interface RecommendViewController ()<UITableViewDelegate,UITableViewDataSource>


// 创建 列表
@property (nonatomic, strong) UITableView * leftTableView;
@property (nonatomic, strong) UITableView * rightTableView;

@end

@implementation RecommendViewController



// 懒加载
-(UITableView *)leftTableView {
    
    if (_leftTableView == nil) {
        
        _leftTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, kAPPW * 0.3, kAPPH)];
        
        
        _leftTableView.delegate = self;
        _leftTableView.dataSource = self;
        
        
        // 注册cell
        [_leftTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"leftCell"];
        
        
        
    }
    
    return _leftTableView;
    
}



-(UITableView *)rightTableView {
    
    
    if (_rightTableView == nil) {
        
        _rightTableView = [[UITableView alloc] initWithFrame:CGRectMake(kAPPW * 0.3, 64, kAPPW * 0.7, kAPPH)];
        
        
        _rightTableView.delegate = self;
        _rightTableView.dataSource = self;
        
        
        // 注册cell
        [_rightTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"rightCell"];
        
        
        
    }
    
    return _rightTableView;

    
    
    
}







/**
 *  数据源方法
 */


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    if (tableView == _leftTableView) {
        return 30;
    } else {
        
        return 30;
        
    }
    
    
    
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView == _leftTableView) {
        // 设置 左边的 tableViewCell
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"leftCell" forIndexPath:indexPath];
        
        // 设置内容
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
        
        
        return cell;
        
    } else {
        
        // 设置 右边的 tableViewCell

        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"rightCell" forIndexPath:indexPath];
        
        // 设置内容
        cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];

        
        return cell;
        
    }
    
    
    
    
    
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (tableView == _leftTableView) {
        
        // 左边tableView的所选的行
        NSIndexPath *ToIndexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:0];
        
        
        [self.rightTableView selectRowAtIndexPath:ToIndexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
        
    }
    
    
    
}




-(void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if (scrollView == self.leftTableView) return;
    
    if (scrollView == self.rightTableView) {
        
        
        NSIndexPath *index = [[self.rightTableView indexPathsForVisibleRows] firstObject];
        
        
        NSIndexPath *ToIndexPath = [NSIndexPath indexPathForRow:index.row inSection:0];
        
        [self.leftTableView selectRowAtIndexPath:ToIndexPath animated:YES scrollPosition:UITableViewScrollPositionMiddle];
        
        
    }
    
    
    
    
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [self.view addSubview:self.leftTableView];
    [self.view addSubview:self.rightTableView];
    
    
}






@end
