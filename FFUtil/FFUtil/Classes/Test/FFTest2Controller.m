//
//  FFTest2Controller.m
//  FFUtil
//
//  Created by nono on 16/6/22.
//  Copyright © 2016年 nono. All rights reserved.
//

#import "FFTest2Controller.h"

//#import <iflyMSC/iflyMSC.h>
//#import "IATConfig.h"
//
//#import "ISRDataHelper.h"
//
//NSString * const APPID_VALUE = @"5777a81e";

#import "FFVoiceUtil.h"

@interface FFTest2Controller ()
@property (strong, nonatomic) FFVoiceUtil *util;
@end

@implementation FFTest2Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    
    
    
    

}
- (IBAction)startSpeakAction:(id)sender
{
    self.util = [FFVoiceUtil sharedVoice];
    [self.util startSpeak];
    
    
}

- (IBAction)endSpeakAction:(id)sender
{
    
}



///**
// 设置识别参数
// ****/
//-(void)initRecognizer
//{
//    NSLog(@"%s",__func__);
//    
//    if ([IATConfig sharedInstance].haveView == NO) {//无界面
//        
//        //单例模式，无UI的实例
//        if (_iFlySpeechRecognizer == nil) {
//            _iFlySpeechRecognizer = [IFlySpeechRecognizer sharedInstance];
//            
//            [_iFlySpeechRecognizer setParameter:@"" forKey:[IFlySpeechConstant PARAMS]];
//            
//            //设置听写模式
//            [_iFlySpeechRecognizer setParameter:@"iat" forKey:[IFlySpeechConstant IFLY_DOMAIN]];
//        }
//        _iFlySpeechRecognizer.delegate = self;
//        
//        if (_iFlySpeechRecognizer != nil) {
//            IATConfig *instance = [IATConfig sharedInstance];
//            
//            //设置最长录音时间
//            [_iFlySpeechRecognizer setParameter:instance.speechTimeout forKey:[IFlySpeechConstant SPEECH_TIMEOUT]];
//            //设置后端点
//            [_iFlySpeechRecognizer setParameter:instance.vadEos forKey:[IFlySpeechConstant VAD_EOS]];
//            //设置前端点
//            [_iFlySpeechRecognizer setParameter:instance.vadBos forKey:[IFlySpeechConstant VAD_BOS]];
//            //网络等待时间
//            [_iFlySpeechRecognizer setParameter:@"20000" forKey:[IFlySpeechConstant NET_TIMEOUT]];
//            
//            //设置采样率，推荐使用16K
//            [_iFlySpeechRecognizer setParameter:instance.sampleRate forKey:[IFlySpeechConstant SAMPLE_RATE]];
//            
//            if ([instance.language isEqualToString:[IATConfig chinese]]) {
//                //设置语言
//                [_iFlySpeechRecognizer setParameter:instance.language forKey:[IFlySpeechConstant LANGUAGE]];
//                //设置方言
//                [_iFlySpeechRecognizer setParameter:instance.accent forKey:[IFlySpeechConstant ACCENT]];
//            }else if ([instance.language isEqualToString:[IATConfig english]]) {
//                [_iFlySpeechRecognizer setParameter:instance.language forKey:[IFlySpeechConstant LANGUAGE]];
//            }
//            //设置是否返回标点符号
//            [_iFlySpeechRecognizer setParameter:instance.dot forKey:[IFlySpeechConstant ASR_PTT]];
//            
//        }
//    }
//}
//
//
//- (void)onResults:(NSArray *)results isLast:(BOOL)isLast
//{
//    NSMutableString *resultString = [[NSMutableString alloc] init];
//    NSDictionary *dic = results[0];
//    for (NSString *key in dic) {
//        [resultString appendFormat:@"%@",key];
//    }
//    _result =[NSString stringWithFormat:@"%@%@", _result,resultString];
//    NSString * resultFromJson =  [ISRDataHelper stringFromJson:resultString];
//    
//    
//    if (isLast){
//        NSLog(@"听写结果(json)：%@测试",  self.result);
//    }
//    NSLog(@"_result=%@",_result);
//    NSLog(@"resultFromJson=%@",resultFromJson);
// 
//}
//
//- (void)onError:(IFlySpeechError *)errorCode
//{
//    NSLog(@"没成功");
//}
//
@end
