//
//  UIApplication+JKLInstanceProvider.m
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import "UIApplication+JKLInstanceProvider.h"
#import <objc/runtime.h>

@implementation UIApplication (JKLInstanceProvider)

@dynamic jkl_instanceProvider;

- (JKLInstanceProvider *)jkl_instanceProvider {
  __weak typeof(self) weakSelf = self;
  if (!objc_getAssociatedObject(self, @selector(jkl_instanceProvider))) {
    // if nil, generate a dictionary
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
      __strong typeof(self) strongSelf = weakSelf;
      objc_setAssociatedObject(strongSelf, @selector(jkl_instanceProvider),
                               [[JKLInstanceProvider alloc] init],
                               OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    });
  }

  return objc_getAssociatedObject(self, @selector(jkl_instanceProvider));
}

+ (JKLInstanceProvider *)jkl_instanceProvider {
  return [[UIApplication sharedApplication] jkl_instanceProvider];
}

@end
