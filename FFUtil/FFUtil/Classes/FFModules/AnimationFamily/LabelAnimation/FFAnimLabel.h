//
//  FFAnimLabel.h
//  FFUtil
//
//  Created by nono on 16/8/1.
//  Copyright © 2016年 nono. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FFAnimLabel : UIView


@property (copy, nonatomic) NSAttributedString *attributedText;


- (void)startAnim;
- (void)reStartAnim;
@end
