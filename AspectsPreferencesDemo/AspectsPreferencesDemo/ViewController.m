//
//  ViewController.m
//  AspectsPreferencesDemo
//
//  Created by victor on 15/9/9.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIButton *bt=[[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 60)];
    [bt setTitle:@"000" forState:UIControlStateNormal];
    [bt setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [bt setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(nextOnClick) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)nextOnClick
{
    OneViewController *vc=[[OneViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"==000=viewWillAppear==000==");
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"==000=viewWillDisappear==000==");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
