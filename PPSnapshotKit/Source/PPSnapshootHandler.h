//
//  PPSnapshootHandler.h
//  PPWebCapture
//
//  Created by Vernon on 2018/5/30.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PPSnapshootHandler;

@protocol PPSnapshootHandlerDelegate <NSObject>

@optional

- (void)snapshootHandler:(PPSnapshootHandler *)snapshootHandler didFinish:(UIImage *)captureImage forView:(UIView *)view;

@end

@interface PPSnapshootHandler : NSObject

+ (instancetype)defaultHandler;

@property (nonatomic, weak) id<PPSnapshootHandlerDelegate> delegate;

- (void)snapshootForView:(__kindof UIView *)view;

@end
