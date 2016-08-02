//
//  UIView+FFAutoLayout.h
//  RuYi
//
//  Created by nono on 16/4/11.
//  Copyright © 2016年 DLin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (FFAutoLayout)

/**
 *  和参考 view 左、右相等 上(viewY) 高度(viewHeight) 完整约束
 *
 *  @param superView  父视图
 *  @param viewHeight  view 高度
 *  @param viewY       view 的 Y 值
 */
- (void)setupAutoEqualLeftAndRightWithSuperview:(UIView *)superView viewHeight:(CGFloat)viewHeight viewY:(CGFloat)viewY;

/**
 *  和参考 view 左、右、下相等 高(viewHeight) 完整约束
 *
 *  @param superView  父视图
 *  @param viewHeight  view 高度
 */
- (void)setupAutoBottomAndRightAndLeftEqualToView:(UIView *)superView viewHeight:(CGFloat)viewHeight;

/**
 *  和参考 view 上、下、左、右完全相等 完整约束
 *
 *  @param superView 父视图
 */
- (void)setupAutoTheSameAsSuperView:(UIView *)superView;

/**
 *  和参考 view 左、右、下相等 上间距(topSpace) 完整约束
 *
 *  @param referenceView 参考 view
 *  @param topSpace      上间距
 */
- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace;

/**
 *  和参考 view 上、左、右相等 下间距(topSpace) 完整约束
 *
 *  @param referenceView 参考 view
 *  @param topSpace      下间距
 */
- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace;

/**
 *  和参考 view 上、下、右相等 左间距(topSpace) 完整约束
 *
 *  @param referenceView 参考 view
 *  @param topSpace      左间距
 */
- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView leftSpace:(CGFloat)leftSpace;

/**
 *  和参考 view 上、下、左相等 右间距(topSpace) 完整约束
 *
 *  @param referenceView 参考 view
 *  @param topSpace      右间距
 */
- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView rightSpace:(CGFloat)rightSpace;

/**
 *  根据参考 view 四周间距设置 (完整约束)
 *
 *  @param referenceView 参考 view
 *  @param topSpace       上间距
 *  @param leftSpace     左间距
 *  @param rightSpace    右间距
 *  @param bottomSpace   底部间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace bottomSpace:(CGFloat)bottomSpace;

/**
 *  设置 view 的宽度 不完整约束
 *
 *  @param width 宽度
 */
- (void)setupAutoViewWidth:(CGFloat)width;

/**
 *  设置 view 的高度 不完整约束
 *
 *  @param height 高度
 */
- (void)setupAutoViewHeight:(CGFloat)height;

/**
 *  设置参照 view 顶部间距
 *
 *  @param referenceView 参照 view
 *  @param topSpace      上间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace;

/**
 *  和参照 view 高度相等 不完整约束
 *
 *  @param referenceView 参照 view
 */
- (void)setupAutoTheSameHeightWithReferenceView:(UIView *)referenceView;


/**
 *  和参照 view 左右上相等 不完整约束
 *
 *  @param referenceView 参照 view
 */
- (void)setupAutoLeftRightAndUpTheSameReferenceView:(UIView *)referenceView;

/**
 *  和参照 view 左、右相等 上(距离 topSpace) 不完整约束
 *
 *  @param referenceView 参照 view
    @param topDistance   自己顶部到参照 view 的间距
 */
- (void)setupAutoLeftAndRightTheSameReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace;

/**
 *  根据参考 view 上、左、右间距 (不完整约束)
 *
 *  @param referenceView 参考 view
 *  @param leftSpace     左间距
 *  @param rightSpace    右间距
 *  @param topSpace      上间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

/**
 *  根据参考 view 下、左、右间距 (不完整约束)
 *
 *  @param referenceView 参考 view
 *  @param bottomSpace   底部间距
 *  @param leftSpace     左间距
 *  @param rightSpace    右间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace;

/**
 *  根据参考 view 上、下、右间距 (不完整约束)
 *
 *  @param referenceView 参考 view
 *  @param topSpace      上间距
 *  @param bottomSpace   底部间距
 *  @param rightSpace    右间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace  bottomSpace:(CGFloat)bottomSpace rightSpace:(CGFloat)rightSpace;

/**
 *  根据参考 view 上、下、左间距 (不完整约束)
 *
 *  @param referenceView 参考 view
 *  @param topSpace      上间距
 *  @param bottomSpace   底部间距
 *  @param leftSpace     右间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace leftSpace:(CGFloat)leftSpace;

/**
 *  和参照 view 的底部相等 不完整约束
 *
 *  @param referenceView 参照 view
 */
- (void)setupAutoBottomTheSameReferenceView:(UIView *)referenceView;

/**
 *  和参照 view 底部间距 不完整约束
 *
 *  @param referenceView 参照 view
 *  @param bottomSpace    底部间距
 */
- (void)setupAutoReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace;

/**
 *  和参照 view 右边间距 不完整约束
 *
 *  @param referenceView 参照 view
 *  @param rightSpace    右间距
 *  @param asSameRight   是否同右边相等 yes rightSpace 不起作用
 */
- (void)setupAutoReferenceView:(UIView *)referenceView rightSpace:(CGFloat)rightSpace asSameRight:(BOOL)asSameRight;

/**
 *  和参照 view 左边间距 不完整约束
 *
 *  @param referenceView 参照 view
 *  @param leftSpace     左间距
 *  @param asSameLeft    是否同左边相等 yes leftSpace 不起作用
 */
- (void)setupAutoReferenceView:(UIView *)referenceView leftSpace:(CGFloat)leftSpace asSameLeft:(BOOL)asSameLeft;

/**
 *  和参照 view 水平居中
 *
 *  @param referenceView 参照 view
 *  @param ownWidth       自己的宽度
 */
- (void)setupAutoHorizontalCenterReferenceView:(UIView *)referenceView ownWidth:(CGFloat)ownWidth;

/**
 *  和参照 view 垂直居中
 *
 *  @param referenceView 参照 view
 *  @param ownHeight      自己的高度
 */
- (void)setupAutoVerticalCenterReferenceView:(UIView *)referenceView ownHeight:(CGFloat)ownHeight;

/** 设置Cell的高度自适应，也可用于设置普通view内容高度自适应 */
- (void)ffSetupAutoHeightWithBottomView:(UIView *)bottomView bottomMargin:(CGFloat)bottomMargin;

/** 用于设置普通view内容宽度自适应 */
- (void)ffSetupAutoWidthWithRightView:(UIView *)rightView rightMargin:(CGFloat)rightMargin;

/**
 *  清空自动布局设置
 */
- (void)ffClearAutoLayoutSettings;

@end

@interface UIScrollView (SDAutoContentSize)

/** 设置scrollview内容竖向自适应 */
- (void)setupAutoContentSizeWithBottomView:(UIView *)bottomView bottomMargin:(CGFloat)bottomMargin;

/** 设置scrollview内容横向自适应 */
- (void)setupAutoContentSizeWithRightView:(UIView *)rightView rightMargin:(CGFloat)rightMargin;

@end

