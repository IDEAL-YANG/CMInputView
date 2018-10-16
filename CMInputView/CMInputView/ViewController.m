//
//  ViewController.m
//  CMInputView
//
//  Created by CrabMan on 16/9/9.
//  Copyright © 2016年 CrabMan. All rights reserved.
//

#import "ViewController.h"

#import "CMInputView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CMInputView *inputView;
    
    // Do any additional setup after loading the view, typically from a nib.
    inputView = [[CMInputView alloc]initWithFrame:CGRectMake(100, 100, 300, 40)];

    inputView.font = [UIFont systemFontOfSize:18];
    inputView.placeholder = @"CrabMan的测试文字";

    inputView.cornerRadius = 4;
    inputView.placeholderColor = [UIColor redColor];
    //inputView.placeholderFont = [UIFont systemFontOfSize:22];
    // 设置文本框最大行数
    __weak typeof(CMInputView) *weakInputView = inputView;
    [inputView textValueDidChanged:^(NSString *text, CGFloat textHeight) {
        CGRect frame = weakInputView.frame;
        frame.size.height = textHeight;
        weakInputView.frame = frame;
    }];
    
    inputView.maxNumberOfLines = 4;
    [self.view addSubview:inputView];
    
    
   

}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
   
//    self.inputView.text = @"啦啦啦啦啦";
//    self.inputView.textColor = [UIColor blackColor];
   
    
//    self.inputView.text = @"啦啦啦啦";
//
//    self.inputView.text = nil;

    [self.view endEditing:true];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
