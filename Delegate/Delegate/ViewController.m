//
//  ViewController.m
//  Delegate
//
//  Created by MichaelLi on 2016/10/18.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import "ViewController.h"
#import "ShuangHui.h"
@interface ViewController ()<ShuangHuiDelegate>//遵守协议方法

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //养殖户
    ShuangHui *shuanghui = [[ShuangHui alloc]initWithFrame:CGRectMake(400, 400, 400, 400)];
    [shuanghui setBackgroundColor:[UIColor orangeColor]];
    //设置代理
    shuanghui.delegate = self;
    [self.view addSubview:shuanghui];


}

//实现代理方法
//-(void)needPigMeat
//{
//    NSLog(@"肉来了");
//}

/*
 1.遵守协议方法
 2.设置代理
 3.实现代理方法
 */
@end
