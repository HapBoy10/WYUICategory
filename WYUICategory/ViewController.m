//
//  ViewController.m
//  WYUICategory
//
//  Created by 3TI on 13-11-30.
//  Copyright (c) 2013年 qiaquan. All rights reserved.
//

#import "ViewController.h"

#import "WYUIKitCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIAlertView *a = [[UIAlertView alloc] initWithTitle:@"" message:@"" delegate:nil cancelButtonTitle:@"queding" otherButtonTitles:@"yes", nil];
    [a addActionHandler:^(NSInteger index) {
        NSLog(@"%d",index);
    }];
    [a show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
