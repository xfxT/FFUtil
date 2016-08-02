//
//  UIView+FFAutoLayout.m
//  RuYi
//
//  Created by nono on 16/4/11.
//  Copyright © 2016年 DLin. All rights reserved.
//

#import "UIView+FFAutoLayout.h"
#import "UIView+SDAutoLayout.h"
#import "UIView+FFExpansion.m"

@implementation UIView (FFAutoLayout)


- (void)setupAutoEqualLeftAndRightWithSuperview:(UIView *)superView viewHeight:(CGFloat)viewHeight viewY:(CGFloat)viewY
{
    
    self.sd_layout.topSpaceToView(superView,viewY).leftEqualToView(superView).rightEqualToView(superView).heightIs(viewHeight).maxHeightIs(viewHeight).minHeightIs(viewHeight);
}

- (void)setupAutoTheSameAsSuperView:(UIView *)superView
{
    self.sd_layout.topEqualToView(superView).bottomEqualToView(superView).leftEqualToView(superView).rightEqualToView(superView);
}

- (void)setupAutoViewWidth:(CGFloat)width
{
    self.sd_layout.widthIs(width);
}

- (void)setupAutoViewHeight:(CGFloat)height
{
    self.sd_layout.heightIs(height);
}

- (void)setupAutoTheSameHeightWithReferenceView:(UIView *)referenceView
{
    self.sd_layout.heightRatioToView(referenceView,1);
}

- (void)setupAutoBottomAndRightAndLeftEqualToView:(UIView *)superView viewHeight:(CGFloat)viewHeight
{
    self.sd_layout.bottomEqualToView(superView).leftEqualToView(superView).rightEqualToView(superView).heightIs(viewHeight);
}

- (void)setupAutoLeftRightAndUpTheSameReferenceView:(UIView *)referenceView
{
    self.sd_layout.leftEqualToView(referenceView).rightEqualToView(referenceView).topEqualToView(referenceView);
}

- (void)setupAutoLeftAndRightTheSameReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace
{
    self.sd_layout.leftEqualToView(referenceView).rightEqualToView(referenceView).topSpaceToView(referenceView,topSpace);
}


- (void)setupAutoBottomTheSameReferenceView:(UIView *)referenceView
{
    self.sd_layout.bottomEqualToView(referenceView);
}

- (void)setupAutoReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace
{
    self.sd_layout.bottomSpaceToView(referenceView,bottomSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace bottomSpace:(CGFloat)bottomSpace
{
    self.sd_layout.topSpaceToView(referenceView,topSpace).leftSpaceToView(referenceView,leftSpace).rightSpaceToView(referenceView,rightSpace).bottomSpaceToView(referenceView,bottomSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace
{
    self.sd_layout.rightSpaceToView(referenceView,rightSpace).leftSpaceToView(referenceView,leftSpace).topSpaceToView(referenceView,topSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace leftSpace:(CGFloat)leftSpace rightSpace:(CGFloat)rightSpace
{
    self.sd_layout.rightSpaceToView(referenceView,rightSpace).leftSpaceToView(referenceView,leftSpace).bottomSpaceToView(referenceView,bottomSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace  bottomSpace:(CGFloat)bottomSpace rightSpace:(CGFloat)rightSpace
{
    self.sd_layout.rightSpaceToView(referenceView,rightSpace).topSpaceToView(referenceView,topSpace).bottomSpaceToView(referenceView,bottomSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace bottomSpace:(CGFloat)bottomSpace leftSpace:(CGFloat)leftSpace
{
    self.sd_layout.leftSpaceToView(referenceView,leftSpace).topSpaceToView(referenceView,topSpace).bottomSpaceToView(referenceView,bottomSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace
{
    self.sd_layout.topSpaceToView(referenceView,topSpace);
}

- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView topSpace:(CGFloat)topSpace
{
    self.sd_layout.topSpaceToView(referenceView,topSpace).bottomEqualToView(referenceView).leftEqualToView(referenceView).rightEqualToView(referenceView);
}

- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView bottomSpace:(CGFloat)bottomSpace
{
    self.sd_layout.topEqualToView(referenceView).bottomSpaceToView(referenceView,bottomSpace).leftEqualToView(referenceView).rightEqualToView(referenceView);
}

- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView leftSpace:(CGFloat)leftSpace
{
    self.sd_layout.topEqualToView(referenceView).bottomEqualToView(referenceView).leftSpaceToView(referenceView,leftSpace).rightEqualToView(referenceView);
}

- (void)setupAutoTheSameAsReferenceView:(UIView *)referenceView rightSpace:(CGFloat)rightSpace
{
    self.sd_layout.topEqualToView(referenceView).bottomEqualToView(referenceView).leftEqualToView(referenceView).rightSpaceToView(referenceView,rightSpace);
}

- (void)setupAutoReferenceView:(UIView *)referenceView rightSpace:(CGFloat)rightSpace asSameRight:(BOOL)asSameRight
{
    if (asSameRight) {
        self.sd_layout.rightEqualToView(referenceView);
    }else{
        self.sd_layout.rightSpaceToView(referenceView,rightSpace);
    }
    
}

- (void)setupAutoReferenceView:(UIView *)referenceView leftSpace:(CGFloat)leftSpace asSameLeft:(BOOL)asSameLeft
{
    if (asSameLeft) {
        self.sd_layout.leftEqualToView(referenceView);
    }else{
        self.sd_layout.leftSpaceToView(referenceView,leftSpace);
    }
}

- (void)setupAutoHorizontalCenterReferenceView:(UIView *)referenceView ownWidth:(CGFloat)ownWidth
{
    CGFloat centerX = referenceView.ff_w * 0.5 - ownWidth * 0.5;
    self.sd_layout.leftSpaceToView(referenceView,centerX);
}

- (void)setupAutoVerticalCenterReferenceView:(UIView *)referenceView ownHeight:(CGFloat)ownHeight
{
    CGFloat centerX = referenceView.ff_h * 0.5 - ownHeight * 0.5;
    self.sd_layout.topSpaceToView(referenceView,centerX);
}

/** 设置Cell的高度自适应，也可用于设置普通view内容高度自适应 */
- (void)ffSetupAutoHeightWithBottomView:(UIView *)bottomView bottomMargin:(CGFloat)bottomMargin
{
    [self setupAutoHeightWithBottomView:bottomView bottomMargin:bottomMargin];
}

/** 用于设置普通view内容宽度自适应 */
- (void)ffSetupAutoWidthWithRightView:(UIView *)rightView rightMargin:(CGFloat)rightMargin
{
    [self setupAutoWidthWithRightView:rightView rightMargin:rightMargin];
}

- (void)ffClearAutoLayoutSettings
{
    [self sd_clearSubviewsAutoLayoutFrameCaches];
}

@end

@implementation UIScrollView (SDAutoContentSize)

- (void)setupAutoContentSizeWithBottomView:(UIView *)bottomView bottomMargin:(CGFloat)bottomMargin
{
    [self setupAutoContentSizeWithBottomView:bottomView bottomMargin:bottomMargin];
}

- (void)setupAutoContentSizeWithRightView:(UIView *)rightView rightMargin:(CGFloat)rightMargin
{
    [self setupAutoContentSizeWithRightView:rightView rightMargin:rightMargin];
}

@end
