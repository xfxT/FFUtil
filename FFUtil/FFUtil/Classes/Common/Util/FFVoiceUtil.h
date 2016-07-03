//
//  FFVoiceUtil.h
//  FFUtil
//
//  Created by nono on 16/7/3.
//  Copyright © 2016年 nono. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FFVoiceUtil : NSObject

+ (instancetype)sharedVoice;
- (void)startSpeak;
@end
