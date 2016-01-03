//
//  JKLInstanceProvider.h
//  Pods
//
//  Created by Jacky on 3/01/2016.
//
//

#import <Foundation/Foundation.h>


@interface JKLInstanceProvider : NSObject

- (id)instanceForClass:(Class)cls;

- (void)setInstanceForClass:(Class)cls withObject:(id)object;

- (void)removeInstanceForClass:(Class)cls;
@end
