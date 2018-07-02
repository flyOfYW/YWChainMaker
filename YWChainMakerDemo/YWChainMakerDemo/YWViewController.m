//
//  YWViewController.m
//  YWChainMakerDemo
//
//  Created by yaowei on 2018/6/29.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "YWViewController.h"
#import "UIView+YWAddInit.h"
@interface YWViewController ()

@end

@implementation YWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *la2 = [UILabel new];
    la2.yw_make
    .frame(CGRectMake(70, 130, 300, 20))
    .addToSuperView(self.view)
    .font(14)
    .textColor([UIColor redColor])
    .text(@"去除block的写法");
    
    NSLog(@"---------");
    
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)dealloc{
    NSLog(@"%s",__func__);
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
