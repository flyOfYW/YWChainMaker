# YWChainMaker
UIKit控件的链式编程

## 环境要求

该库需运行在 iOS 8.0 和 Xcode 7.0以上环境.

## 集成方法

YWChainMaker 可以在[CocoaPods](http://cocoapods.org)中获取，将以下内容添加进你的Podfile中后，运行`pod install`即可安装:

```ruby
pod 'YWChainMaker'
```
然后在需要使用的地方引入

```
#import "UIView+YWAddInit.h"
```

## 使用
一般我们创建的代码的方式
```
    UILabel *la1 = [[UILabel alloc] init];
    la1.frame = CGRectMake(70, 100, 300, 20);
    la1.font = [UIFont systemFontOfSize:17];
    la1.text = @"cfhjknlladslfdnsbsjnmfdsnmfnbnmn";
    la1.textColor = [UIColor whiteColor];
    la1.backgroundColor = [UIColor lightGrayColor];
    la1.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:la1];
```
现在可以像Masonry那样使用，让代码更加简洁，同时颜色支持16进制

```
   UILabel *la1 = [UILabel new];
    [la1 yw_makeChains:^(YWChainMaker *make) {
        make.frame(CGRectMake(70, 100, 300, 20))
        .font(17)
        .textColorColorWithRgbValue(0x777777)
        .text(@"cfhjknlladslfdnsbsjnmfdsnmfnbnmn")
        .addToSuperView(self.view);
    }];
    
```
