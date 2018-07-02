//
//  UIView+YWAddInit.h
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "YWChainMaker.h"

@interface UIView (YWAddInit)

//这个类似SDAutoLayout的用法
- (YWChainMaker *)yw_make;
@property (nonatomic) YWChainMaker *ownMake;

//这个用法类似Masonry
- (void)yw_makeChains:(void(^)(YWChainMaker * make))block;
@end
