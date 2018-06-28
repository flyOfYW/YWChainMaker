//
//  UIView+YWAddInit.m
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "UIView+YWAddInit.h"

@implementation UIView (YWAddInit)

- (void)yw_makeChains:(void(^)(YWChainMaker * make))block{
    
    YWChainMaker *chainMaker = [[YWChainMaker alloc] init];
    chainMaker.originalView = self;
    block(chainMaker);
}

@end
