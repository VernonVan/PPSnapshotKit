//
//  PPMainViewController.m
//  PPWebCapture
//
//  Created by Vernon on 2018/5/28.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import "PPMainViewController.h"
#import "PPSnapshotViewController.h"

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

    PPSnapshotViewController *snapshotViewController = segue.destinationViewController;
    if ([segue.identifier isEqualToString:@"scrollView"]) {
        snapshotViewController.type = PPSnapshotViewControllerTypeScrollView;
    } else if ([segue.identifier isEqualToString:@"wkwebView"]) {
        snapshotViewController.type = PPSnapshotViewControllerTypeWKWebView;
    } else if ([segue.identifier isEqualToString:@"uiwebView"]) {
        snapshotViewController.type = PPSnapshotViewControllerTypeUIWebView;
    }
}

@end
