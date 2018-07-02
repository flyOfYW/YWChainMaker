//
//  UIView+YWAddInit.m
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "UIView+YWAddInit.h"
#import <objc/runtime.h>

@implementation UIView (YWAddInit)

- (void)yw_makeChains:(void(^)(YWChainMaker * make))block{
    
    YWChainMaker *chainMaker = [[YWChainMaker alloc] init];
    chainMaker.originalView = self;
    block(chainMaker);
}
- (YWChainMaker *)ownMake{
    return objc_getAssociatedObject(self, _cmd);
}
- (void)setOwnMake:(YWChainMaker *)ownMake{
    objc_setAssociatedObject(self, @selector(ownMake), ownMake, OBJC_ASSOCIATION_RETAIN);
}

- (YWChainMaker *)yw_make{
    YWChainMaker *chainMaker = [self ownMake];
    if (!chainMaker) {
        chainMaker =  [[YWChainMaker alloc] init];
        chainMaker.originalView = self;
    }
    return chainMaker;
}
@end
