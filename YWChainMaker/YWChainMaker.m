//
//  YWChainMaker.m
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import "YWChainMaker.h"

@interface YWChainMaker ()
@property (nonatomic,   weak) UILabel *label;
@property (nonatomic,   weak) UIButton *buttion;
@property (nonatomic,   weak) UITextField *textField;
@property (nonatomic,   weak) UITextView *textView;
@property (nonatomic,   weak) UIImageView *imageView;

@property (nonatomic,   weak) UITableView *tableView;


@end

@implementation YWChainMaker

- (YWChainMaker *(^)(NSString *text))text{
    return ^(NSString * text){
        [self setText:text];
        return self;
    };
}
- (YWChainMaker *(^)(float))font{
    return ^(float font){
        [self setFont:font];
        return self;
    };
}
- (YWChainMaker *(^)(UIColor *))textColor{
    return ^(UIColor * textColor){
        [self setTextColor:textColor];
        return self;
    };
}
- (YWChainMaker *(^)(uint32_t))textColorColorWithRgbValue{
    return ^(uint32_t rgbValue){
        [self setTextColorWithRgbValue:rgbValue];
        return self;
    };
}
- (YWChainMaker *(^)(NSTextAlignment))textAlignment{
    return ^(NSTextAlignment textAlignment){
        [self setTextAlignment:textAlignment];
        return self;
    };
}
- (YWChainMaker *(^)(NSLineBreakMode))lineBreakMode{
    return ^(NSLineBreakMode lineBreakMode){
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (YWChainMaker *(^)(NSAttributedString *))attributedText{
    return ^(NSAttributedString * attributedText){
        [self setAttributedText:attributedText];
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        [self setUserInteractionEnabled:userInteractionEnabled];
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))enabled{
    return ^(BOOL enabled){
        [self setEnabled:enabled];
        return self;
    };
}
- (YWChainMaker *(^)(NSInteger))numberOfLines{
    return ^(NSInteger numberOfLines){
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (YWChainMaker *(^)(BOOL))adjustsFontSizeToFitWidth{
    return ^(BOOL adjustsFontSizeToFitWidth){
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (YWChainMaker *(^)(UIBaselineAdjustment))baselineAdjustment{
    return ^(UIBaselineAdjustment baselineAdjustment){
        self.label.baselineAdjustment = baselineAdjustment;
        return self;
    };
}


- (YWChainMaker *(^)(NSString *, UIControlState))title{
    return ^(NSString *title, UIControlState state){
        [self.buttion setTitle:title forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(UIColor *, UIControlState))titleColor{
    return ^(UIColor *color, UIControlState state){
        [self.buttion setTitleColor:color forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(uint32_t, UIControlState))titleColorWithRgbValue{
    return ^(uint32_t rgbValue, UIControlState state){
        [self.buttion setTitleColor:[UIColor colorWithRGB:rgbValue] forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *, UIControlState))image{
    return ^(UIImage *image,UIControlState state){
        [self.buttion setImage:image forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *, UIControlState))backgroundImage{
    return ^(UIImage *backgroundImage,UIControlState state){
        [self.buttion setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(NSAttributedString *, UIControlState))attributedTitle{
    return ^(NSAttributedString *title,UIControlState state){
        [self.buttion setAttributedTitle:title forState:state];
        return self;
    };
}
- (YWChainMaker *(^)(UIEdgeInsets))contentEdgeInsets{
    return ^(UIEdgeInsets contentEdgeInsets){
        self.buttion.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (YWChainMaker *(^)(UIEdgeInsets))titleEdgeInsets{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.buttion.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (YWChainMaker *(^)(UIEdgeInsets))imageEdgeInsets{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.buttion.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (YWChainMaker *(^)(UITextBorderStyle))borderStyle{
    return ^(UITextBorderStyle borderStyle){
        self.textField.borderStyle = borderStyle;
        return self;
    };
}
- (YWChainMaker *(^)(NSString *))placeholder{
    return ^(NSString *placeholder){
        self.textField.placeholder = placeholder;
        return self;
    };
}
- (YWChainMaker *(^)(NSAttributedString *))attributedPlaceholder{
    return ^(NSAttributedString *attributedPlaceholder){
        self.textField.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))clearsOnBeginEditing{
    return ^(BOOL clearsOnBeginEditing){
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (YWChainMaker *(^)(id<UITextFieldDelegate>))textFliedDelegate{
    return ^(id<UITextFieldDelegate>delegate){
        self.textField.delegate = delegate;
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *))background{
    return ^(UIImage *background){
        self.textField.background = background;
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *))disabledBackground{
    return ^(UIImage *disabledBackground){
        self.textField.disabledBackground = disabledBackground;
        return self;
    };
}
- (YWChainMaker *(^)(UITextFieldViewMode))clearButtonMode{
    return ^(UITextFieldViewMode clearButtonMode){
        self.textField.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (YWChainMaker *(^)(UIView *))leftView{
    return ^(UIView *leftView){
        self.textField.leftView = leftView;
        return self;
    };
}
- (YWChainMaker *(^)(UITextFieldViewMode))leftViewMode{
    return ^(UITextFieldViewMode leftViewMode){
        self.textField.leftViewMode = leftViewMode;
        return self;
    };
}
- (YWChainMaker *(^)(UIView *))rightView{
    return ^(UIView *rightView){
        self.textField.rightView = rightView;
        return self;
    };
}
- (YWChainMaker *(^)(UITextFieldViewMode))rightViewMode{
    return ^(UITextFieldViewMode rightViewMode){
        self.textField.rightViewMode = rightViewMode;
        return self;
    };
}
- (YWChainMaker *(^)(id<UITextViewDelegate>))textViewdDelegate{
    return ^(id<UITextViewDelegate>delegate){
        self.textView.delegate = delegate;
        return self;
    };
}
- (YWChainMaker *(^)(NSRange))selectedRange{
    return ^(NSRange selectedRange){
        self.textView.selectedRange = selectedRange;
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))editable{
    return ^(BOOL editable){
        self.textView.editable = editable;
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))selectable{
    return ^(BOOL selectable){
        self.textView.selectable = selectable;
        return self;
    };
}
- (YWChainMaker *(^)(UIDataDetectorTypes))dataDetectorTypes{
    return ^(UIDataDetectorTypes dataDetectorTypes){
        self.textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *))img{
    return ^(UIImage *img){
        self.imageView.image = img;
        return self;
    };
}
- (YWChainMaker *(^)(UIImage *))imhighlightedImageg{
    return ^(UIImage *imhighlightedImageg){
        self.imageView.highlightedImage = imhighlightedImageg;
        return self;
    };
}
- (YWChainMaker *(^)(BOOL ))highlighted{
    return ^(BOOL highlighted){
        self.imageView.highlighted = highlighted;
        return self;
    };
}
-(YWChainMaker *(^)(NSArray<UIImage *> *))animationImages{
    return ^(NSArray<UIImage *> *animationImages){
        self.imageView.animationImages = animationImages;
        return self;
    };
}
- (YWChainMaker *(^)(NSArray<UIImage *> *))highlightedAnimationImages{
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        self.imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (YWChainMaker *(^)(NSTimeInterval))animationDuration{
    return ^(NSTimeInterval animationDuration){
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}
- (YWChainMaker *(^)(NSInteger))animationRepeatCount{
    return ^(NSInteger animationRepeatCount){
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (YWChainMaker *(^)(id<UITableViewDataSource>))tableViewDataSource{
    return ^(id<UITableViewDataSource> dataSource){
        self.tableView.dataSource = dataSource;
        return self;
    };
}
- (YWChainMaker *(^)(id<UITableViewDelegate>))tableViewDelegate{
    return ^(id<UITableViewDelegate> delegate){
        self.tableView.delegate = delegate;
        return self;
    };
}
- (YWChainMaker *(^)(CGFloat))rowHeight{
    return ^(CGFloat rowHeight){
        self.tableView.rowHeight = rowHeight;
        return self;
    };
}
- (YWChainMaker *(^)(CGFloat))sectionHeaderHeight{
    return ^(CGFloat sectionHeaderHeight){
        self.tableView.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (YWChainMaker *(^)(CGFloat))sectionFooterHeight{
    return ^(CGFloat sectionFooterHeight){
        self.tableView.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (YWChainMaker *(^)(CGFloat))estimatedRowHeight{
    return ^(CGFloat estimatedRowHeight){
        self.tableView.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
-(YWChainMaker *(^)(CGFloat))estimatedSectionHeaderHeight{
    return ^(CGFloat estimatedSectionHeaderHeight){
        self.tableView.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
-(YWChainMaker *(^)(CGFloat))estimatedSectionFooterHeight{
    return ^(CGFloat estimatedSectionFooterHeight){
        self.tableView.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (YWChainMaker *(^)(UIEdgeInsets))separatorInset{
    return ^(UIEdgeInsets separatorInset){
        self.tableView.separatorInset = separatorInset;
        return self;
    };
}
- (YWChainMaker *(^)(UIView *))tableHeaderView{
    return ^(UIView *tableHeaderView){
        self.tableView.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (YWChainMaker *(^)(UIView *))tableFooterView{
    return ^(UIView *tableFooterView){
        self.tableView.tableFooterView = tableFooterView;
        return self;
    };
}



//MARK: -- Private method
- (void)setText:(NSString * )text{
    if (self.label) {
        self.label.text = text;
    }else if (self.textField) {
        self.textField.text = text;
    }else if (self.textView){
        self.textView.text = text;
    }
}
- (void)setFont:(float)font{
    if (self.label) {
        self.label.font = [UIFont systemFontOfSize:font];
    }else if (self.textField) {
        self.textField.font = [UIFont systemFontOfSize:font];
    }else if (self.buttion){
        self.buttion.titleLabel.font = [UIFont systemFontOfSize:font];
    }else if (self.textView){
        self.textView.font = [UIFont systemFontOfSize:font];
    }
}
- (void)setTextColor:(UIColor *)textColor{
    if (self.label) {
        self.label.textColor = textColor;
    }else if (self.textField) {
        self.textField.textColor = textColor;
    }else if (self.textView){
        self.textView.textColor = textColor;
    }
}
- (void)setTextColorWithRgbValue:(uint32_t)rgbValue{
    if (self.label) {
        self.label.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textField) {
        self.textField.textColor = [UIColor colorWithRGB:rgbValue];
    }else if (self.textView){
        self.textView.textColor = [UIColor colorWithRGB:rgbValue];
    }
}
- (void)setTextAlignment:(NSTextAlignment)textAlignment{
    if (self.label) {
        self.label.textAlignment = textAlignment;
    }else if (self.buttion){
        self.buttion.titleLabel.textAlignment = textAlignment;
    }else if (self.textField){
        self.textField.textAlignment = textAlignment;
    }else if (self.textView){
        self.textView.textAlignment = textAlignment;
    }
}
- (void)setAttributedText:(NSAttributedString *)attributedText{
    if (self.label) {
        self.label.attributedText = attributedText;
    }else if (self.textField){
        self.textField.attributedText = attributedText;
    }else if (self.textView){
        self.textView.attributedText = attributedText;
    }
}
- (void)setUserInteractionEnabled:(BOOL)userInteractionEnabled{
    if (self.originalView) {
        self.originalView.userInteractionEnabled = userInteractionEnabled;
    }
}
- (void)setEnabled:(BOOL)enabled{
    if (self.label) {
        self.label.enabled = enabled;
    }else if (self.buttion){
        self.buttion.enabled = enabled;
    }else if (self.textField){
        self.textField.enabled = enabled;
    }
}

- (void)setOriginalView:(UIView *)originalView{
    
    _originalView = originalView;
    
    if ([_originalView isKindOfClass:UILabel.class]) {
        _label = (UILabel *)_originalView;
    }else if ([_originalView isKindOfClass:UIButton.class]){
        _buttion = (UIButton *)_originalView;
    }else if ([_originalView isKindOfClass:UITextField.class]){
        _textField = (UITextField *)_originalView;
    }else if ([_originalView isKindOfClass:UITextView.class]){
        _textView = (UITextView *)_originalView;
    }else if ([_originalView isKindOfClass:[UITableView class]]){
        _tableView = (UITableView *)_originalView;
    }
    
}
- (void)dealloc{
    NSLog(@"%s",__func__);
}
@end

@implementation YWChainMaker (PublicProperty)

- (YWChainMaker *(^)(CGRect))frame{
    return ^(CGRect frame){
        self.originalView.frame = frame;
        return self;
    };
}
- (YWChainMaker *(^)(CGRect))bounds{
    return ^(CGRect bounds){
        self.originalView.bounds = bounds;
        return self;
    };
}
- (YWChainMaker *(^)(CGPoint))center{
    return ^(CGPoint center){
        self.originalView.center = center;
        return self;
    };
}
- (YWChainMaker *(^)(CGAffineTransform))transform{
    return ^(CGAffineTransform transform){
        self.originalView.transform = transform;
        return self;
    };
}
- (YWChainMaker *(^)(CGFloat))contentScaleFactor{
    return ^(CGFloat contentScaleFactor){
        self.originalView.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (YWChainMaker *(^)(BOOL))multipleTouchEnabled{
    return ^(BOOL multipleTouchEnabled){
        self.originalView.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (YWChainMaker *(^)(UIColor *))tintColor{
    return ^(UIColor *tintColor){
        self.originalView.tintColor = tintColor;
        return self;
    };
}
- (YWChainMaker *(^)(uint32_t))tintColorWithRgbValue{
    return ^(uint32_t rgbValue){
        self.originalView.tintColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}

- (YWChainMaker *(^)(UIColor *))backgroundColor{
    return ^(UIColor *backgroundColor){
        self.originalView.backgroundColor = backgroundColor;
        return self;
    };
}
- (YWChainMaker *(^)(uint32_t))backgroundColorWithRgbValue{
    return ^(uint32_t rgbValue){
        self.originalView.backgroundColor = [UIColor colorWithRGB:rgbValue];
        return self;
    };
}
- (YWChainMaker *(^)(uint32_t, CGFloat))backgroundColorWithRgbaValue{
    return ^(uint32_t rgbValue,CGFloat alpha){
        self.originalView.backgroundColor = [UIColor colorWithRGB:rgbValue alpha:alpha];
        return self;
    };
}
- (YWChainMaker *(^)(UIView *))addToSuperView{
    return ^(UIView *superView){
        [superView addSubview:self.originalView];
        return self;
    };
}
@end

@implementation UIColor (RGBValue)

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue {
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:1];
}
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha{
    return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0f
                           green:((rgbValue & 0xFF00) >> 8) / 255.0f
                            blue:(rgbValue & 0xFF) / 255.0f
                           alpha:alpha];
}
@end
