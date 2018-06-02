//
//  PPSnapshootViewController.m
//  PPWebCapture
//
//  Created by Vernon on 2018/6/1.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import "PPSnapshootViewController.h"
#import <WebKit/WebKit.h>
#import "PPImageViewController.h"
#import "PPSnapshootHandler.h"

@interface PPSnapshootViewController () <PPSnapshootHandlerDelegate, UITableViewDataSource> {
    UIImage *_snapshootImage;
}
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) UIWebView *uiWebView;
@property (nonatomic, strong) WKWebView *wkWebView;
@end

@implementation PPSnapshootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    switch (self.type) {
        case PPSnapshootViewControllerTypeScrollView:
            [self.view addSubview:self.tableView];
            break;
        case PPSnapshootViewControllerTypeWKWebView:
            [self.wkWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jianshu.com/"]]];
            break;
        case PPSnapshootViewControllerTypeUIWebView:
            [self.uiWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.jianshu.com/"]]];
            break;
        default:
            break;
    }
}

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

- (UIWebView *)uiWebView
{
    if (!_uiWebView) {
        _uiWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:_uiWebView];
    }
    return _uiWebView;
}

- (WKWebView *)wkWebView
{
    if (!_wkWebView) {
        _wkWebView = [[WKWebView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:_wkWebView];
    }
    return _wkWebView;
}

- (IBAction)captureAction:(id)sender
{
    PPSnapshootHandler.defaultHandler.delegate = self;

    switch (self.type) {
        case PPSnapshootViewControllerTypeScrollView:
            [PPSnapshootHandler.defaultHandler snapshootForView:self.tableView];
            break;
        case PPSnapshootViewControllerTypeWKWebView:
            [PPSnapshootHandler.defaultHandler snapshootForView:self.wkWebView];
            break;
        case PPSnapshootViewControllerTypeUIWebView:
            [PPSnapshootHandler.defaultHandler snapshootForView:self.uiWebView];
            break;
        default:
            break;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [super prepareForSegue:segue sender:sender];

    PPImageViewController *imageViewController = segue.destinationViewController;
    imageViewController.image = _snapshootImage;
}

#pragma mark - PPSnapshootHandlerDelegate

- (void)snapshootHandler:(PPSnapshootHandler *)snapshootHandler didFinish:(UIImage *)captureImage forView:(UIView *)view
{
    PPSnapshootHandler.defaultHandler.delegate = nil;

    _snapshootImage = captureImage;
    [self performSegueWithIdentifier:@"showImage" sender:nil];
}

#pragma mark - UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 40;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"喵喵喵";
    return cell;
}

@end
