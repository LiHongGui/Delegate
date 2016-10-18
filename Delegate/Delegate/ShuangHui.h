//
//  ShuangHui.h
//  Delegate
//
//  Created by MichaelLi on 2016/10/18.
//  Copyright © 2016年 手持POS机. All rights reserved.
//

#import <UIKit/UIKit.h>
//自定义协议
@protocol ShuangHuiDelegate <NSObject>

//协议方法
-(void)needPigMeat;

@end
@interface ShuangHui : UIView

//协议属性
@property(nonatomic,weak) id<ShuangHuiDelegate>delegate;

/*
 1.自定义协议
 2.协议方法
 3.协议属性
 */
@end
