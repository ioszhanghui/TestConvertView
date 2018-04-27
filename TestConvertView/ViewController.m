//
//  ViewController.m
//  TestConvertView
//
//  Created by 小飞鸟 on 2018/4/27.
//  Copyright © 2018年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

#define kWindow [UIApplication sharedApplication].keyWindow

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [super touchesBegan:touches withEvent:event];
    
    UIView * view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    UIWindow *window = ((AppDelegate*)([UIApplication sharedApplication].delegate)).window;
    
    CGRect rect = [window convertRect:view.frame fromView:view.superview];
    
    UIView * view2 = [[UIView alloc]initWithFrame:rect];
    view2.backgroundColor = [UIColor greenColor];
    [window addSubview:view2];
    
    
    UIView * view3 = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 50, 50)];
    view3.backgroundColor = [UIColor yellowColor];
    [view addSubview:view3];
    
    CGRect rect2 = [window convertRect:view3.frame fromView:view3.superview];
    
    UIView * view4 = [[UIView alloc]initWithFrame:rect2];
    view4.backgroundColor = [UIColor blueColor];
    [window addSubview:view4];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
