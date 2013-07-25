//
//  ViewController.m
//  ScreenFlashEffect
//
//  Created by isaced on 13-7-25.
//  Copyright (c) 2013年 isaced. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *flashView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.flashView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.flashView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.flashView];
    [self.flashView setAlpha:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)flash:(id)sender {
    [self.flashView setAlpha:1];
    [UIView beginAnimations:@"flash screen" context:nil];
	[UIView setAnimationDuration:0.3f];
	[UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
	[self.flashView setAlpha:0.0f];
	[UIView commitAnimations];
}
@end
