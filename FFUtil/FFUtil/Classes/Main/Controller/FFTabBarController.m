//
//  FFTabBarController.m
//  FFUIKit
//
//  Created by NoNo on 15/10/20.
//  Copyright © 2015年 nono. All rights reserved.
//

#import "FFTabBarController.h"
#import "FFDefine.h"

#import "FFNavigationController.h"




@interface FFTabBarController ()

@end

@implementation FFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupControllers];
    
    if (self.childViewControllers.count == 1) {
        self.tabBar.hidden = YES;
    }
}

#pragma mark 加载控制器
- (void)setupControllers
{
    
    [self addChildVc:@"FFAutoLayoutDemoController" title:@"自动布局" image:@"tabbar_mobileClinic" selectedImage:@"tabbar_mobileClinic_click"];
//    [self addChildVc:@"FFTest2Controller" title:@"测试2" image:@"" selectedImage:@""];
}

#pragma mark 添加一个子控制器 子控制器,标题,图片,选中的图片
- (void)addChildVc:(NSString *)classNmae title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{

   Class vcClass = NSClassFromString(classNmae);
    
    UIViewController *childVc = (UIViewController *)[[vcClass alloc]init];
    
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // 设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = FFColor(123, 123, 123);
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [childVc.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVc.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    // 先给外面传进来的小控制器 包装 一个导航控制器
    FFNavigationController *nav = [[FFNavigationController alloc] initWithRootViewController:childVc];
    // 添加为子控制器
    [self addChildViewController:nav];
}

@end
