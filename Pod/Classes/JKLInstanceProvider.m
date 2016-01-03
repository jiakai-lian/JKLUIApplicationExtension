//
//  JKLInstanceProvider.m
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import "JKLInstanceProvider.h"
#import <JKLThreadSafeMutableCollection/JKLThreadSafeMutableDictionary.h>

@interface JKLInstanceProvider()

@property (nonatomic, strong) JKLThreadSafeMutableDictionary * dictionary;

@end

@implementation JKLInstanceProvider

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dictionary = [[JKLThreadSafeMutableDictionary alloc] init];
    }
    return self;
}

- (instancetype)instanceForClass:(Class)cls
{
    NSString * key = NSStringFromClass(cls);
    id instance = [self.dictionary objectForKey:key];
    if(!instance)
    {
        instance = [[cls alloc] init];
        [self.dictionary setObject:instance forKey:key];
    }
    return instance;
}

@end
