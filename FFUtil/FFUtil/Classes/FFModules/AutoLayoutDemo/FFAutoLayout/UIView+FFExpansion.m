//
//  UIView+FFExpansion.m
//  RuYi
//
//  Created by nono on 15/10/11.
//  Copyright © 2015年 DLin. All rights reserved.
//

#import "UIView+FFExpansion.h"

#import "FFDefine.h"

@implementation UIView (FFExpansion)

- (void)setFf_x:(CGFloat)ff_x
{
    CGRect frame = self.frame;
    frame.origin.x = ff_x;
    self.frame = frame;
}

- (CGFloat)ff_x
{
    return self.frame.origin.x;
}

- (void)setFf_y:(CGFloat)ff_y
{
    CGRect frame = self.frame;
    frame.origin.y = ff_y;
    self.frame = frame;
}

- (CGFloat)ff_y
{
    return self.frame.origin.y;
}

- (void)setFf_w:(CGFloat)ff_w
{
    CGRect frame = self.frame;
    frame.size.width = ff_w;
    self.frame = frame;
}

- (CGFloat)ff_w
{
    return self.frame.size.width;
}

- (void)setFf_h:(CGFloat)ff_h
{
    CGRect frame = self.frame;
    frame.size.height = ff_h;
    self.frame = frame;
}

- (CGFloat)ff_h
{
    return self.frame.size.height;
}

- (void)setFf_size:(CGSize)ff_size
{
    CGRect frame = self.frame;
    frame.size = ff_size;
    self.frame = frame;
}

- (CGSize)ff_size
{
    return self.frame.size;
}

- (void)setFf_origin:(CGPoint)ff_origin
{
    CGRect frame = self.frame;
    frame.origin = ff_origin;
    self.frame = frame;
}

- (CGPoint)ff_origin
{
    return self.frame.origin;
}

+ (UIView *)setupLineWithView:(UIView *)view bottom:(BOOL)bottom
{
    return [UIView setupLineWithView:view bottom:bottom color:FFColor(224, 227, 230)];
}

+ (UIView *)setupLineWithView:(UIView *)view bottom:(BOOL)bottom color:(UIColor *)color
{
    CGFloat lineViewX = 0;
    CGFloat lineViewY = 0;
    CGFloat lineViewW = view.frame.size.width;
    CGFloat lineViewH = 0.5;
    if (bottom) {
        lineViewY = view.frame.size.height - lineViewH;
    }
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(lineViewX, lineViewY, lineViewW, lineViewH)];
    lineView.backgroundColor = color;
    return lineView;
    
}

@end
