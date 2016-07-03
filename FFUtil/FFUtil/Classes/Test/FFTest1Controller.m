//
//  FFTest1Controller.m
//  FFUtil
//
//  Created by nono on 16/6/22.
//  Copyright © 2016年 nono. All rights reserved.
//

#import "FFTest1Controller.h"

#import "FFVoiceUtil.h"

#import <AFNetworking.h>

@interface FFTest1Controller ()

@property (strong, nonatomic) FFVoiceUtil *util;

@property (assign, nonatomic) BOOL speaker;

@end

@implementation FFTest1Controller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.util = [FFVoiceUtil sharedVoice];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)speakerAction:(id)sender
{
    self.speaker = !self.speaker;
    if(self.speaker){
        [self.util startSpeak];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
