//
//  PPSnapshotHandler.h
//  PPWebCapture
//
//  Created by Vernon on 2018/5/30.
//  Copyright © 2018年 Vernon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class PPSnapshotHandler;

@protocol PPSnapshotHandlerDelegate <NSObject>

@optional

- (void)snapshotHandler:(PPSnapshotHandler *)snapshotHandler didFinish:(UIImage *)captureImage forView:(UIView *)view;

@end

@interface PPSnapshotHandler : NSObject

+ (instancetype)defaultHandler;

@property (nonatomic, weak) id<PPSnapshotHandlerDelegate> delegate;

- (void)snapshotForView:(__kindof UIView *)view;

@end
