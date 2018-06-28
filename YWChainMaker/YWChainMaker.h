//
//  YWChainMaker.h
//  YWKit
//
//  Created by yaowei on 2017/6/27.
//  Copyright © 2018年 yaowei. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface YWChainMaker : NSObject

@property (nonatomic,   weak) UIView *originalView;

- (YWChainMaker *(^)(NSString       *)) text;     // default is nil

- (YWChainMaker *(^)(float           )) font;  // default is nil (system font 17 plain)

- (YWChainMaker *(^)(UIColor        *)) textColor;   // default is nil (text draws black)

- (YWChainMaker *(^)(uint32_t        )) textColorColorWithRgbValue;   // default is nil (text draws black)


- (YWChainMaker *(^)(NSTextAlignment )) textAlignment;   // default is NSTextAlignmentNatural (before iOS 9, the default was NSTextAlignmentLeft)

- (YWChainMaker *(^)(NSLineBreakMode )) lineBreakMode;  // default is NSLineBreakByTruncatingTail. used for single and multiple lines of text

// the underlying attributed string drawn by the label, if set, the label ignores the properties above.
- (YWChainMaker *(^)(NSAttributedString *)) attributedText NS_AVAILABLE_IOS(6_0);  // default is nil

- (YWChainMaker *(^)(BOOL                 )) userInteractionEnabled;  // default is NO

- (YWChainMaker *(^)(BOOL                 )) enabled;  // default is YES. changes how the label is drawn

// this determines the number of lines to draw and what to do when sizeToFit is called. default value is 1 (single line). A value of 0 means no limit
// if the height of the text reaches the # of lines or the height of the view is less than the # of lines allowed, the text will be
// truncated using the line break mode.
- (YWChainMaker *(^)(NSInteger              )) numberOfLines;  // default is YES. changes how the label is drawn


// these next 3 properties allow the label to be autosized to fit a certain width by scaling the font size(s) by a scaling factor >= the minimum scaling factor
// and to specify how the text baseline moves when it needs to shrink the font.
- (YWChainMaker *(^)(BOOL                   )) adjustsFontSizeToFitWidth;        // default is NO

- (YWChainMaker *(^)(UIBaselineAdjustment   )) baselineAdjustment;         // default is UIBaselineAdjustmentAlignBaselines


- (YWChainMaker *(^)(NSString *,UIControlState)) title;  // default is nil. title is assumed to be single line

- (YWChainMaker *(^)(UIColor *,UIControlState)) titleColor UI_APPEARANCE_SELECTOR;   // default if nil. use opaque white

- (YWChainMaker *(^)(uint32_t, UIControlState)) titleColorWithRgbValue UI_APPEARANCE_SELECTOR;   // default if nil. use opaque white

- (YWChainMaker *(^)(UIImage *,UIControlState)) image; // default is nil. should be same size if different for different states

- (YWChainMaker *(^)(UIImage *,UIControlState)) backgroundImage UI_APPEARANCE_SELECTOR; // default is nil

- (YWChainMaker *(^)(NSAttributedString *,UIControlState)) attributedTitle NS_AVAILABLE_IOS(6_0); // default is nil. title is assumed to be single line

- (YWChainMaker *(^)(UIEdgeInsets             )) contentEdgeInsets UI_APPEARANCE_SELECTOR; // default is UIEdgeInsetsZero. On tvOS 10 or later, default is nonzero except for custom buttons.

- (YWChainMaker *(^)(UIEdgeInsets             )) titleEdgeInsets;     // default is UIEdgeInsetsZero

- (YWChainMaker *(^)(UIEdgeInsets             )) imageEdgeInsets;     // default is UIEdgeInsetsZero


- (YWChainMaker *(^)(UITextBorderStyle         )) borderStyle;  // default is UITextBorderStyleNone. If set to UITextBorderStyleRoundedRect, custom background images are ignored.

- (YWChainMaker *(^)(NSString                 *)) placeholder;  // default is nil. string is drawn 70% gray

- (YWChainMaker *(^)(NSAttributedString       *)) attributedPlaceholder NS_AVAILABLE_IOS(6_0); // default is nil

- (YWChainMaker *(^)(BOOL                      )) clearsOnBeginEditing;   // default is NO which moves cursor to location clicked. if YES, all text

- (YWChainMaker *(^)(id<UITextFieldDelegate>   )) textFliedDelegate;   // default is nil. weak reference

- (YWChainMaker *(^)(UIImage                  *)) background;   // default is nil. draw in border rect. image should be stretchable

- (YWChainMaker *(^)(UIImage                  *)) disabledBackground;   // default is nil. ignored if background not set. image should be stretchable

- (YWChainMaker *(^)(UITextFieldViewMode       )) clearButtonMode;   // sets when the clear button shows up. default is UITextFieldViewModeNever

- (YWChainMaker *(^)(UIView                   *)) leftView;   // e.g. magnifying glass

- (YWChainMaker *(^)(UITextFieldViewMode       )) leftViewMode;   // sets when the left view shows up. default is UITextFieldViewModeNever

- (YWChainMaker *(^)(UIView                   *)) rightView;   // e.g. bookmarks button

- (YWChainMaker *(^)(UITextFieldViewMode       )) rightViewMode;   // sets when the right view shows up. default is UITextFieldViewModeNever

- (YWChainMaker *(^)(id<UITextViewDelegate>   )) textViewdDelegate;   // default is nil. weak reference

- (YWChainMaker *(^)(NSRange                  )) selectedRange;

- (YWChainMaker *(^)(BOOL                     )) editable __TVOS_PROHIBITED;

- (YWChainMaker *(^)(BOOL                     )) selectable NS_AVAILABLE_IOS(7_0);  // toggle selectability, which controls the ability of the user to select content and interact with URLs & attachments. On tvOS this also makes the text view focusable.

- (YWChainMaker *(^)(UIDataDetectorTypes      )) dataDetectorTypes NS_AVAILABLE_IOS(3_0) __TVOS_PROHIBITED;

- (YWChainMaker *(^)(UIImage                  *)) img;   // default is nil

- (YWChainMaker *(^)(UIImage                  *)) imhighlightedImageg;   // default is nil

- (YWChainMaker *(^)(UIImage                  *)) highlighted NS_AVAILABLE_IOS(3_0);   // default is NO

- (YWChainMaker *(^)(NSArray<UIImage *>        *)) animationImages;  // The array must contain UIImages. Setting hides the single image. default is nil

- (YWChainMaker *(^)(NSArray<UIImage *>        *)) highlightedAnimationImages NS_AVAILABLE_IOS(3_0); // The array must contain UIImages. Setting hides the single image. default is nil

- (YWChainMaker *(^)(NSTimeInterval             )) animationDuration;     // for one cycle of images. default is number of images * 1/30th of a second (i.e. 30 fps)

- (YWChainMaker *(^)(NSInteger                  )) animationRepeatCount;    // 0 means infinite (default is 0)


@end

@interface YWChainMaker (PublicProperty)

// animatable. do not use frame if view is transformed since it will not correctly reflect the actual location of the view. use bounds + center instead.
- (YWChainMaker *(^)(CGRect                  )) frame;

// use bounds/center and not frame if non-identity transform. if bounds dimension is odd, center may be have fractional part

- (YWChainMaker *(^)(CGRect                  )) bounds; // default bounds is zero origin, frame size. animatable

- (YWChainMaker *(^)(CGPoint                 )) center; // center is center of frame. animatable

- (YWChainMaker *(^)(CGAffineTransform       )) transform; // default is CGAffineTransformIdentity. animatable

- (YWChainMaker *(^)(CGFloat                 )) contentScaleFactor NS_AVAILABLE_IOS(4_0);

- (YWChainMaker *(^)(BOOL                    )) multipleTouchEnabled __TVOS_PROHIBITED;   // default is NO



- (YWChainMaker *(^)(UIColor                 *)) tintColor NS_AVAILABLE_IOS(5_0);  // The tintColor is inherited through the superview hierarchy. See UIView for more information.

- (YWChainMaker *(^)(uint32_t                 )) tintColorWithRgbValue NS_AVAILABLE_IOS(5_0);  // The tintColor is inherited through the superview hierarchy. See UIView for more information.

- (YWChainMaker *(^)(UIColor                 *)) backgroundColor UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (YWChainMaker *(^)(uint32_t                 )) backgroundColorWithRgbValue UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (YWChainMaker *(^)(uint32_t,         CGFloat)) backgroundColorWithRgbaValue UI_APPEARANCE_SELECTOR;    // default is nil. Can be useful with the appearance proxy on custom UIView subclasses.

- (YWChainMaker *(^)(UIView                  *)) addToSuperView;


@end



@interface UIColor (RGBValue)

+ (UIColor *)colorWithRGB:(uint32_t)rgbValue;
+ (UIColor *)colorWithRGB:(uint32_t)rgbValue alpha:(CGFloat)alpha;
@end


