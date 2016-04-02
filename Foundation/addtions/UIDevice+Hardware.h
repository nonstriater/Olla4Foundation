//
//  UIDevice+Hardware.h
//  FuShuo
//
//  Created by nonstriater on 14-1-26.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (Hardware)

+ (BOOL)isIphone;
+ (BOOL)isIpad;
+ (BOOL)isIOS7;
+ (BOOL)isIOS8;

+ (NSArray *)screenSizes;

@end
