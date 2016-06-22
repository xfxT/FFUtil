//
//  FFDefine.h
//  FFUtil
//
//  Created by nono on 16/6/22.
//  Copyright © 2016年 nono. All rights reserved.
//

#import <Foundation/Foundation.h>

//    设置颜色 V1.0
// RGB颜色
#define FFColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
//颜色和透明度设置
#define GrayRGB(x) FFColor(x, x, x)
//随机色
#define RYRandomColor [UIColor colorWithRed:(arc4random_uniform(254) / 255.0) green:(arc4random_uniform(254) / 255.0) blue:(arc4random_uniform(254) / 255.0) alpha:1.0]
//    设置颜色 END

@interface FFDefine : NSObject

@end
