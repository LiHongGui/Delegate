//
//  ShuangHui.m
//  Delegate
//
//  Created by MichaelLi on 2016/10/18.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import "ShuangHui.h"


@implementation ShuangHui
//实例化---设置一个View
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        //初始化并赋值
        UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 200, 200)];
        [button setBackgroundColor:[UIColor redColor]];
        [self addSubview:button];

        //添加点击事件
        [button addTarget:self action:@selector(didClickButton) forControlEvents:UIControlEventTouchUpInside];

    }
    return self;
}

-(void)didClickButton
{
    NSLog(@"没有肉了,赶紧送货");

    //没肉了,点击后,通知代理
//    [self.delegate needPigMeat];

    //判断 是一个BOOL值:对象实现了这个方法:就返回YES,不实现;返回NO
    if ([self.delegate respondsToSelector:@selector(needPigMeat)]) {
        [self.delegate needPigMeat];
    }
}
@end
