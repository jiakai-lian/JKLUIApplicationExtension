//
//  UIApplication+JKLAppDelegate.m
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import "UIApplication+JKLAppDelegate.h"

@implementation UIApplication (JKLAppDelegate)

+ (UIResponder<UIApplicationDelegate> *)jkl_appDelegate {
  return [[self sharedApplication] delegate];
}

@end
