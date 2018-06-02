//
//  PPImageViewController.m
//  PPWebCapture
//
//  Created by Vernon on 2018/6/1.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import "PPImageViewController.h"

@interface PPImageViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIImageView *imageView;
@end

@implementation PPImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.imageView = [[UIImageView alloc] init];
    self.imageView.image = self.image;
    self.imageView.contentMode = UIViewContentModeScaleAspectFit;

    self.scrollView = [[UIScrollView alloc] init];
    [self.scrollView addSubview:self.imageView];
    [self.view addSubview:self.scrollView];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];

    if (self.image.size.height == UIScreen.mainScreen.bounds.size.height) {
        self.scrollView.contentOffset = CGPointMake(0, self.scrollView.contentSize.height - self.scrollView.frame.size.height);
    }
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];

    CGFloat height = self.image.size.height;
    CGFloat width = self.image.size.width;

    self.scrollView.frame = self.view.bounds;
    self.scrollView.contentSize = CGSizeMake(width, height);

    self.imageView.frame = CGRectMake(0, 0, width, height);
}

@end
