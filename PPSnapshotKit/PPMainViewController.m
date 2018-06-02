//
//  PPMainViewController.m
//  PPWebCapture
//
//  Created by Vernon on 2018/5/28.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import "PPMainViewController.h"
#import "PPSnapshootViewController.h"

@interface PPMainViewController ()

@end

@implementation PPMainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];

    PPSnapshootViewController *snapshootViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"scrollView"]) {
        snapshootViewController.type = PPSnapshootViewControllerTypeScrollView;
    } else if ([segue.identifier isEqualToString:@"wkwebView"]) {
        snapshootViewController.type = PPSnapshootViewControllerTypeWKWebView;
    } else if ([segue.identifier isEqualToString:@"uiwebView"]) {
        snapshootViewController.type = PPSnapshootViewControllerTypeUIWebView;
    }
}

@end
