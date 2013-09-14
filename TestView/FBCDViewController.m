//
//  FBCDViewController.m
//  TestView
//
//  Created by Kamal, Chinmaya (ETW) on 7/29/13.
//  Copyright (c) 2013 Kamal, Chinmaya (ETW). All rights reserved.
//

#import "FBCDViewController.h"
#import "FBCDTestView.h"

@interface FBCDViewController ()
- (IBAction)fullPushed:(id)sender;
- (IBAction)halfPushed:(id)sender;
- (IBAction)hidePushed:(id)sender;
@property (nonatomic,strong) FBCDTestView* myView;

@end

@implementation FBCDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.myView = [[FBCDTestView alloc]init];
    
    [self.myView setBackgroundColor:[UIColor blackColor]];
    
    [self.view addSubview:self.myView];
    
    [self.myView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSDictionary *dict = @{@"myView":self.myView};
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"V:|-430-[myView(==30)]"
                               options:NSLayoutFormatDirectionLeadingToTrailing
                               metrics:nil
                               views:dict]];
    
    [self.view addConstraints:[NSLayoutConstraint
                               constraintsWithVisualFormat:@"H:|-20-[myView(==280)]"
                               options:NSLayoutFormatDirectionLeadingToTrailing
                               metrics:nil
                               views:dict]];
    
    [self.view layoutIfNeeded];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fullPushed:(id)sender {
    CGRect rect = CGRectMake(20, 430, 280, 30);
    self.myView.frame = rect;
}

- (IBAction)halfPushed:(id)sender {
    CGRect rect = CGRectMake(20, 445, 280, 30);
    self.myView.frame = rect;
}

- (IBAction)hidePushed:(id)sender {
    CGRect rect = CGRectMake(20, 460, 280, 30);
    self.myView.frame = rect;
}
@end
