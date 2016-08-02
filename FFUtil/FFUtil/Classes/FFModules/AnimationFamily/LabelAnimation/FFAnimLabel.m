//
//  FFAnimLabel.m
//  FFUtil
//
//  Created by nono on 16/8/1.
//  Copyright © 2016年 nono. All rights reserved.
//

#import "FFAnimLabel.h"
#import "UIView+FFAutoLayout.h"
#import <CoreText/CoreText.h>
#import "UIView+FFExpansion.h"

CGFloat animTime = 3.0f;

@interface FFAnimLabel()
{
    NSMutableArray *labels;
    NSMutableArray *numArr;
    NSMutableArray *dataArr;
}

@property (strong, nonatomic) UIView *bgView;

@property (strong, nonatomic) UIImageView *bgImageView;

@property (strong, nonatomic) UIView *shadeView;
@property (strong, nonatomic) UIView *shadeBGView;
@property (strong, nonatomic) UIView *moveView;

@property (strong, nonatomic) UIView *labelView;

@property (strong, nonatomic) UILabel *contentLabel;

@property (assign, nonatomic) NSUInteger moveRow;
@property (assign, nonatomic) NSUInteger allRow;
@property (strong, nonatomic) NSMutableArray *moveViewArray;

@property(nonatomic) CGSize oneFontSize;

@end

@implementation FFAnimLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUIWithFrame:frame];
    }
    return self;
}

#pragma mark - 设置 UI
- (void)setupUIWithFrame:(CGRect)frame
{
    
    [self addSubview:self.bgView];
    [self.bgView addSubview:self.bgImageView];
    [self.bgView addSubview:self.labelView];
    [self.labelView addSubview:self.contentLabel];
    

    [self setupFrame:frame];
}

- (void)setupFrame:(CGRect)frame
{
    CGRect bgBounds = CGRectMake(0, 0, frame.size.width, frame.size.height);
    self.bgView.frame = bgBounds;
    
    self.bgImageView.frame = self.bgView.bounds;
    self.bgImageView.ff_h = 25;
    
    self.labelView.frame = CGRectMake(self.bgView.ff_x + 10, self.bgView.ff_y + 5, self.bgView.ff_w-15, self.bgView.ff_h-10);
    self.contentLabel.frame = self.labelView.bounds;
    self.shadeBGView.frame = self.bgView.bounds;
    self.shadeView.frame = self.bgView.bounds;
    
    self.moveView.frame = CGRectMake(0, 0, self.shadeView.ff_w, 21);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
}

#pragma mark - 懒加载
- (NSMutableArray *)moveViewArray
{
    if (_moveViewArray == nil) {
        _moveViewArray = [NSMutableArray array];
    }
    return _moveViewArray;
}
- (UIView *)shadeBGView
{
    if (_shadeBGView == nil) {
        _shadeBGView = [[UIView alloc]init];
    }
    return _shadeBGView;
}
- (UIView *)moveView
{
    if (_moveView == nil) {
        _moveView = [[UIView alloc]init];
    }
    return _moveView;
}

- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc]init];
        
//        _contentLabel.backgroundColor = [UIColor orangeColor];
        _contentLabel.numberOfLines = 0;
        UIFont *contentFont = [UIFont fontWithName:@"Helvetica Neue" size:16];
            _contentLabel.font = contentFont;
            _contentLabel.textColor = [UIColor grayColor];
        
        CGSize oneFontSize = [self stringSizeWithfont:contentFont size:CGSizeMake(MAXFLOAT, MAXFLOAT) text:@"测"];
        self.oneFontSize = oneFontSize;

        
    }
    return _contentLabel;
}
- (UIView *)labelView
{
    if (_labelView == nil) {
        _labelView = [[UIView alloc]init];
    }
    return _labelView;
}
- (UIView *)shadeView
{
    if (_shadeView == nil) {
        _shadeView = [[UIView alloc]init];
    }
    return _shadeView;
}

- (UIView *)bgView
{
    if (_bgView == nil) {
        _bgView = [[UIView alloc]init];
    }
    return _bgView;
}

- (UIImageView *)bgImageView
{
    if (_bgImageView == nil) {
        _bgImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"chat_other"]];

    }
    return _bgImageView;
}

#pragma mark 设置数据
- (void)setAttributedText:(NSAttributedString *)attributedText
{
    _attributedText = attributedText;
    self.contentLabel.attributedText = attributedText;

    [_contentLabel sizeToFit];
//    NSLog(@"%@",NSStringFromCGRect(_contentLabel.frame));
    NSInteger row = _contentLabel.ff_h / self.oneFontSize.height;
//    NSLog(@"%zd",row);
    self.allRow = row;
    for (NSUInteger idx = 0; idx < row; idx++) {
        CGFloat moveViewX = self.labelView.ff_x;
        CGFloat moveViewY = idx * self.oneFontSize.height + 5;
        CGFloat moveViewW = self.labelView.ff_w;
        CGFloat moveViewH = self.oneFontSize.height + 5;
//        CGFloat moveViewX = 0;
//        CGFloat moveViewY = idx * self.oneFontSize.height + 5;
//        CGFloat moveViewW = self.bgView.ff_w;
//        CGFloat moveViewH = self.oneFontSize.height + 5;
        if (idx == 0) {
            moveViewX = 0;
            moveViewY = 0;
            moveViewH = 25;
            moveViewW = self.bgView.ff_w;
        }
        if (idx == row-1) {
            moveViewH = self.oneFontSize.height + 10;
        }
        UIView *moveView = [[UIView alloc]initWithFrame:CGRectMake(moveViewX, moveViewY, moveViewW, moveViewH)];
        moveView.backgroundColor = [UIColor whiteColor];
        [self.bgView addSubview:moveView];
        [self.moveViewArray addObject:moveView];
    }
}


#pragma mark 加载数据源
- (void)loadDatasourse
{
    
}

#pragma mark - 自定义代理

#pragma mark - 业务逻辑


- (void)startAnim
{

    for (NSUInteger idx = 0; idx < self.moveViewArray.count; idx++) {
        UIView *moveView = self.moveViewArray[idx];
        CGFloat time = animTime * idx + animTime;
        [self performSelector:@selector(addImageHeight) withObject:moveView afterDelay:time];
        [self performSelector:@selector(moveViewAction:) withObject:moveView afterDelay:time];
        
    }
    
}

- (void)reStartAnim
{
    [self setupFrame:self.frame];
    [self startAnim];
}

- (void)addImageHeight
{
    self.moveRow++;
    if (self.moveRow > 1 && self.moveRow < self.allRow) {
        self.bgImageView.ff_h += self.oneFontSize.height + 3;
    }
}

- (void)moveViewAction:(UIView *)moveView
{
    
    
    CGFloat moveWidth = moveView.ff_w;
    
    [UIView animateWithDuration:animTime animations:^{
        
        moveView.transform = CGAffineTransformMakeTranslation(moveWidth,0);
        moveView.ff_w = 1;
    } completion:^(BOOL finished) {
        [moveView removeFromSuperview];
        
    }];
}



#pragma mark - test
- (CGSize)stringSizeWithfont:(UIFont *)font size:(CGSize)size text:(NSString *)text
{
    NSDictionary *attributes = @{NSFontAttributeName : font};
    CGRect rect = [text boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:NULL];
    return rect.size;
}
@end
