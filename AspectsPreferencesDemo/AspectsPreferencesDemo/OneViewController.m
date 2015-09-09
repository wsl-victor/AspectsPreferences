//
//  OneViewController.m
//  AspectsPreferencesDemo
//
//  Created by victor on 15/9/9.
//  Copyright (c) 2015年 victor. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"
@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    UIButton *bt=[[UIButton alloc] initWithFrame:CGRectMake(0, 100, 100, 60)];
    [bt setTitle:@"two" forState:UIControlStateNormal];
    [bt setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [bt setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:bt];
    
    [bt addTarget:self action:@selector(nextOnClick) forControlEvents:UIControlEventTouchUpInside];

}

-(void)nextOnClick
{
    TwoViewController *vc=[[TwoViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"==222=viewWillAppear==222==");
    
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    NSLog(@"==222=viewWillDisappear==222==");
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
