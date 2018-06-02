//
//  PPSnapshotViewController.h
//  PPWebCapture
//
//  Created by Vernon on 2018/6/1.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM (NSUInteger, PPSnapshotViewControllerType) {
    PPSnapshotViewControllerTypeScrollView,
    PPSnapshotViewControllerTypeWKWebView,
    PPSnapshotViewControllerTypeUIWebView
};

@interface PPSnapshotViewController : UIViewController

@property (nonatomic, assign) PPSnapshotViewControllerType type;

@end
