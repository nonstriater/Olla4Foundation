//
//  UIDevice+Hardware.m
//  FuShuo
//
//  Created by nonstriater on 14-1-26.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "UIDevice+Hardware.h"

@implementation UIDevice (Hardware)

+ (BOOL)isIphone{
    return ([[ [ UIDevice currentDevice ] model ] rangeOfString:@"iPhone"].location != NSNotFound);
}

+ (BOOL)isIpad{
    return [[ [ UIDevice currentDevice ] model ] rangeOfString:@"iPad"].location != NSNotFound;
}

+ (BOOL)isIOS7{
    return [[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending;
}

+ (BOOL)isIOS8{
    return [[[UIDevice currentDevice] systemVersion] compare:@"8.0" options:NSNumericSearch] != NSOrderedAscending;
}

+ (NSArray *)screenSizes{
    return @[@"320x480", // iphone 3g,3gs,touch 1,2,3
             @"640x960", // iphone 4, 4s, touch 4
             @"640x1136",// iphone 5,5s,5c,  touch 5
             @"750x1336",// iphone 6 （375x667 @2x）
             @"1242x2208",// iphone 6+ （414x736 @3x）
             @"768x1024",// ipad 1,2, mini
             @"1536x2048"// new ipad,ipad 4
             ];
}

@end
