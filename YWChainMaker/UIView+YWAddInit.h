//
//  UIView+YWAddInit.h
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "YWChainMaker.h"

@interface UIView (YWAddInit)
- (void)yw_makeChains:(void(^)(YWChainMaker * make))block;
@end
