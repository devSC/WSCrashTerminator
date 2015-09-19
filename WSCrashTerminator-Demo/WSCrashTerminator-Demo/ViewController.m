//
//  ViewController.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *string = @"哈哈";
    NSMutableDictionary *mutableDictionary = [[NSMutableDictionary alloc] init];
//    [mutableDictionary setObject:string forKey:@"key"];

    
    NSDictionary *dic = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"key", @"j", @"1", nil] forKeys:[NSArray arrayWithObjects:@"1", @"2", @"3", nil] count:3];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
