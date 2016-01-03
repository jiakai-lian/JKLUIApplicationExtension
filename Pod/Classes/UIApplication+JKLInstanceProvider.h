//
//  UIApplication+JKLInstanceProvider.h
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import <UIKit/UIKit.h>
#import "JKLInstanceProvider.h"

@interface UIApplication (JKLInstanceProvider)

@property (nonatomic,readonly, strong) JKLInstanceProvider * jkl_instanceProvider;

+ (JKLInstanceProvider *) jkl_instanceProvider;
@end
