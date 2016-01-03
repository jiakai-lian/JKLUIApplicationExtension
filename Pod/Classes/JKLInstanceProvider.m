//
//  JKLInstanceProvider.m
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import "JKLInstanceProvider.h"
#import <JKLThreadSafeMutableCollection/JKLThreadSafeMutableDictionary.h>

@interface JKLInstanceProvider ()

@property(nonatomic, strong) JKLThreadSafeMutableDictionary* dictionary;

@end

@implementation JKLInstanceProvider

- (instancetype)init {
  self = [super init];
  if (self) {
    _dictionary = [[JKLThreadSafeMutableDictionary alloc] init];
  }
  return self;
}

- (instancetype)instanceForClass:(Class)cls {
  return [self.dictionary objectForKey:NSStringFromClass(cls)];
}

- (void)setInstanceForClass:(Class)cls withObject:(id)object
{
    [self.dictionary setObject:object forKey:NSStringFromClass(cls)];
}

- (void)removeInstanceForClass:(Class)cls
{
    [self.dictionary removeObjectForKey:NSStringFromClass(cls)];
}

@end
