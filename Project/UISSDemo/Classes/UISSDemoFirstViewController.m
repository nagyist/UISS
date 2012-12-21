//
//  UISSDemoFirstViewController.m
//  UISSDemo
//
//  Created by Robert Wijas on 10/21/11.
//  Copyright (c) 2011 57things. All rights reserved.
//

#import "UISSDemoFirstViewController.h"

@implementation UISSDemoFirstViewController

- (IBAction)action:(id)sender {
    [[[UIAlertView alloc] initWithTitle:@"Test"
                               message:nil
                              delegate:nil
                     cancelButtonTitle:@"Close"
                     otherButtonTitles:nil] show];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.navigationController.navigationBar setHidden:YES];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
    
    [self.navigationController.navigationBar setHidden:NO];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
  if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
      return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
  } else {
      return YES;
  }
}

@end
