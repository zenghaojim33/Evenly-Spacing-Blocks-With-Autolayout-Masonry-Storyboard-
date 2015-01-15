//
//  ViewController.m
//  MasonryDemo
//
//  Created by Anson on 15/1/13.
//  Copyright (c) 2015年 Anson. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView * view1 = [UIView new];
//    view1.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view1];
//    UIView * view2 = [UIView new];
//    view2.backgroundColor = [UIColor redColor];
//    [self.view addSubview:view2];

    self.title = @"123123";
    //设定中间个数
    int n=11;
    
    
    NSMutableArray * viewArray = [NSMutableArray array];
    for (int i=0;i<n;i++)
    {
        UIView * view = [UIView new];
        view.backgroundColor = [UIColor blackColor];
        [self.view addSubview:view];
        [viewArray addObject:view];
    }
    
    
    __weak __typeof(&*self)ws = self;
    
//    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(30, 30));
//        make.leading.equalTo(ws.view).offset(0);
//        make.centerY.equalTo(ws.view);
//        
//    }];
//    
//    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.size.mas_equalTo(CGSizeMake(30, 30));
//        make.trailing.equalTo(ws.view).offset(0);
//        make.centerY.equalTo(ws.view);
//
//        
//    }];
    
    //接下来就是中间那三个
    
    
    for (int i=0;i<n;i++)
    {
        UIView * view = viewArray[i];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(10, 10));
            make.centerY.equalTo(ws.view.mas_centerY);
            float multiplier = (1+i*2)/(n*2.0);
            make.centerX.equalTo(ws.view.mas_trailing).multipliedBy(multiplier);
            
        }];
    }
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
