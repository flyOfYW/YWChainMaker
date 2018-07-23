//
//  ViewController.m
//  YWChainMakerDemo
//
//  Created by yaowei on 2018/6/28.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YWAddInit.h"
#import "YWViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UILabel *la = [UILabel new];
    [la yw_makeChains:^(YWChainMaker *make) {
        make.frame(CGRectMake(70, 70, 200, 20));
        make.font(15)
        .textColor([UIColor redColor])
        .userInteractionEnabled(YES)
        .backgroundColorWithRgbValue(0x777777).text(@"链式编程就是这么任性");
        make.addToSuperView(self.view);
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(preAction)];
    [la addGestureRecognizer:tap];
    
    UILabel *l1 = [[UILabel alloc] initWithFrame:CGRectMake(70, 100, 300, 20)];
    l1.font = [UIFont systemFontOfSize:17];
    l1.textColor = [UIColor redColor];
    l1.text = @"cfhjknlladslfdnsbsjnmfdsnmfnbnmn";
    [self.view addSubview:l1];
    
    
    UILabel *la1 = [UILabel new];
    [la1 yw_makeChains:^(YWChainMaker *make) {
        make.frame(CGRectMake(70, 100, 300, 20))
        .font(17)
        .textColor(UIColor.redColor)
//        .textColorColorWithRgbValue(0x777777) //或者直接使用16进制
        .text(@"cfhjknlladslfdnsbsjnmfdsnmfnbnmn")
        .addToSuperView(self.view);
    }];
    
    UILabel *la2 = [UILabel new];
    la2.yw_make
    .frame(CGRectMake(70, 130, 300, 20))
    .addToSuperView(self.view)
    .font(14)
    .textColor([UIColor redColor])
    .text(@"去除block的写法");
    
    
    UIImageView *ivon = [UIImageView new];
    
    ivon.yw_make
    .frame(CGRectMake(70, 150, 40, 40))
    .backgroundColor(UIColor.whiteColor)
    .imhighlightedImageg([UIImage imageNamed:@"con"])
    .addToSuperView(self.view);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.yw_make
    .frame(CGRectMake(70, 200, 60, 40))
    .backgroundColor(UIColor.redColor)
    .addToSuperView(self.view)
    .clipsToBounds(YES)
    .cornerRadius(9)
    .borderWidth(2)
    .borderColor([UIColor greenColor].CGColor);
    
    
    [btn addTarget:self action:@selector(preAction) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)preAction{
    [self presentViewController:[YWViewController new] animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
