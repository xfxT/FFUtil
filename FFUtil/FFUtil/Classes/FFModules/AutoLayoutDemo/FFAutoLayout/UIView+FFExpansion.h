//
//  UIView+FFExpansion.h
//  RuYi
//
//  Created by nono on 15/10/11.
//  Copyright © 2015年 DLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FFExpansion)

@property (assign, nonatomic) CGFloat ff_x;
@property (assign, nonatomic) CGFloat ff_y;
@property (assign, nonatomic) CGFloat ff_w;
@property (assign, nonatomic) CGFloat ff_h;
@property (assign, nonatomic) CGSize ff_size;
@property (assign, nonatomic) CGPoint ff_origin;

/*!
 *  画灰色线 默认 rgb 204
 *
 *  @param view   需要画线的 view
 *  @param bottom 是否底部
 *
 *  @return 一条线
 */
+ (UIView *)setupLineWithView:(UIView *)view bottom:(BOOL)bottom;

/*!
 *  画线
 *
 *  @param view   需要画线的 view
 *  @param bottom 是否底部
 *  @param color  颜色
 *
 *  @return 一条线
 */
+ (UIView *)setupLineWithView:(UIView *)view bottom:(BOOL)bottom color:(UIColor *)color;

@end
