//
//  ViewController.m
//  0317
//
//  Created by mengyun on 2017/3/17.
//  Copyright © 2017年 mengyun. All rights reserved.
//

#import "ViewController.h"
#import "LuaFunction.h"

@interface ViewController ()

@property (nonatomic,strong)LuaFunc *L;
- (IBAction)setValue:(id)sender;
- (IBAction)getValue:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *keyText;
@property (strong, nonatomic) IBOutlet UITextField *valueText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.L = [[LuaFunc alloc]init];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setValue:(id)sender {
    const char *key = [_keyText.text UTF8String];
    const char *value = [_valueText.text UTF8String];
    [_L lSetKey:key with:value];
    _keyText.text = @"";
    _valueText.text = @"";
}

- (IBAction)getValue:(id)sender {
    const char *key = [_keyText.text UTF8String];
    const char* s = [_L lGetValueByKey:key];
    _valueText.text = [NSString stringWithUTF8String:s];
}
@end
