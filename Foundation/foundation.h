//
//  system.h
//  OllaFramework
//
//  Created by nonstriater on 14-6-19.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#ifndef OllaFramework_foundation_h
#define OllaFramework_foundation_h

// addtions
#import "NSURL+Query.h"
#import "NSArray+addtions.h"
#import "NSMutableArray+addtions.h"
#import "NSAttributedString+Height.h"
#import "NSDate+additions.h"
#import "NSDate+Utilities.h" //by @erica
#import "NSDictionary+additions.h"
#import "NSNumber+additions.h"
#import "NSString+MD5.h"
#import "NSString+size.h"
#import "NSString+ORM.h"
#import "NSData+AES.h"
#import "UIColor+additions.h"
#import "UIDevice+Hardware.h"
#import "UIDevice+software.h"
#import "UIDevice+Identifier.h"
#import "UIFont+additions.h"
#import "UIImage+Color.h"
#import "UIImage+BoxBlur.h"
#import "UIImage+Filter.h"
#import "UIImage+Resize.h"
#import "NSLocale+additions.h"
#import "NSObject+check.h"
#import "NSObject+KeyPath.h"

//util
#import "OllaSandBox.h"
#import "GCDHelper.h"
#import "OllaKeychain.h"


// network
#import "OllaSocket.h"

// preferenc
#import "OllaPreference.h"

// audio
#import "OllaAudioSound.h"

// asset Library
#import "ALAsset+additions.h"
#import "ALAssetsGroup+additions.h"
#import "OllaAssetsLoader.h"


#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

#define IS_IOS7 SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")
#define IS_IOS8 SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")
#define IS_3_5 ([[UIScreen mainScreen] bounds].size.height==480)

#define IS_IPHONE ([[ [ UIDevice currentDevice ] model ] rangeOfString:@"iPhone"].location != NSNotFound)
#define IS_IPAD ([[ [ UIDevice currentDevice ] model ] rangeOfString:@"iPad"].location != NSNotFound)

#import <objc/runtime.h>


#endif
