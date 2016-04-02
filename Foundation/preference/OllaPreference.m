//
//  OllaPreference.m
//  Olla
//
//  Created by null on 14-10-18.
//  Copyright (c) 2014年 xiaoran. All rights reserved.
//

#import "OllaPreference.h"
#import "foundation.h"

@interface OllaPreference (){
    
    NSString *_currentFilePath;//文件绝对路径
    NSString *_fullNamespace;// 文件命名前缀
}

@property(nonatomic,strong) NSMutableDictionary *userInfo;


@end

@implementation OllaPreference

+ (OllaPreference *)defaultInstance{
    
    static OllaPreference *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[OllaPreference alloc] init];
    });
    
    return instance;
}

- (NSString *)fullNamespace{
    if (!_fullNamespace) {
        _fullNamespace = @"com.between.olla";
    }
    return _fullNamespace;
}

- (NSString *)path{

    if (!_path) {
        _path = [OllaSandBox libPrefPath];
    }
   return _path;
}


- (NSString *)filePath{
    
    if (!_currentFilePath) {
        NSString *filePath = [self.path stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.%@.plist",self.fullNamespace ,self.uid]];
        if (![OllaSandBox createFileIfNotExist:filePath]) {
            return nil;
        }
        _currentFilePath = filePath;
    }
    
    return _currentFilePath;

}

- (NSMutableDictionary *)userInfo{

    if (!_userInfo) {
        _userInfo = [[NSMutableDictionary alloc] initWithContentsOfFile:[self filePath]];
        if(!_userInfo){
            _userInfo = [NSMutableDictionary dictionary];
        }

    }
    return _userInfo;
}


- (void)setUid:(NSString *)uid{
    
    if (_uid != uid) {
     
        _uid = uid;
        if ([uid length]==0) {
            return;
        }
    }
}

- (id)valueForKey:(NSString *)defaultName{
    if ([self.uid length]==0) {
        return nil;
    }
    id value = [self.userInfo valueForKey:defaultName];
    return value;
}

- (void)setValue:(id)value forKey:(NSString *)defaultName{
    if ([self.uid length]==0) {
        return;
    }
    if (!value) {
        return;
    }
    if ([value isNull]) {
        value = @"";
    }
    [self.userInfo setValue:value forKey:defaultName];
    [self synchronize];
}

- (void)addUserInfo:(NSDictionary *)__userInfo{
    [self.userInfo addEntriesFromDictionary:[__userInfo propertyListDictionary]];
    [self synchronize];
}

- (void)removeValueForKey:(NSString *)defaultName{
    if ([self.uid length]==0) {
        return;
    }
    [self.userInfo removeObjectForKey:defaultName];
    [self synchronize];
}

- (BOOL)synchronize{
    BOOL ret = [self.userInfo writeToFile:_currentFilePath atomically:YES];
    return ret;
}

@end


