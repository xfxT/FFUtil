//
//  FFAnimFamilyController.m
//  FFUtil
//
//  Created by nono on 16/8/1.
//  Copyright © 2016年 nono. All rights reserved.
//

#import "FFAnimFamilyController.h"

#import "FFAnimLabel.h"

@interface FFAnimFamilyController ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@property (weak, nonatomic) FFAnimLabel *label;

@end

@implementation FFAnimFamilyController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    
    
    
    
//    CGFloat heih = 120;
//    NSString * cLabelString = @"第一这是测试UILabel行间距的text。这是测试UILabel行间距的text。n 这是测试UILabel行间距的text。n 这是测试UILabel行间距的text。这是测试UILabel行间距的text。这是测试UILabel行间距的text。这是测试UILabel行间距的text。";
//    UILabel * cLabel = [[UILabel alloc]initWithFrame:CGRectMake(20, heih, 280, 200)];
//    cLabel.backgroundColor = [UIColor orangeColor];
//    cLabel.numberOfLines = 0;
//    cLabel.font = [UIFont fontWithName:@"Helvetica Neue" size:16];
//    cLabel.textColor = [UIColor grayColor];
//    
//    NSMutableAttributedString * attributedString1 = [[NSMutableAttributedString alloc] initWithString:cLabelString];
//    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
//    [paragraphStyle1 setLineSpacing:15];
//    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [cLabelString length])];
//    [cLabel setAttributedText:attributedString1];
//    [cLabel sizeToFit];
//    [self.view addSubview:cLabel];
    
    
}

- (void)startAnimLabel
{
    NSString * cLabelString = @"第一这是测试UILabel行间距的text。这是测试UILabel行间距的text。n 这是测试UILabel行间距的text。n 这是测试UILabel行间距的text。这是测试UILabel行间距的text。这是测试UILabel行间距的text。这是测试UILabel行间距的text。";
    FFAnimLabel *label = [[FFAnimLabel alloc]initWithFrame:CGRectMake(20, 80, 200, 200)];
    NSAttributedString *aStr = [[NSAttributedString alloc]initWithString:cLabelString];
    label.attributedText = aStr;
    [self.view addSubview:label];
    self.label = label;
    [label startAnim];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startAction:(UIButton *)sender {
    if (self.label) {
        [self.label removeFromSuperview];
    }
    
    [self startAnimLabel];
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
