//
//  NSNull+Hook.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSNull+Hook.h"

@implementation NSNull (Hook)


- (NSUInteger)length {
    return 0;
}

- (NSInteger)integerValue {

    return 0;
};

- (float)floatValue {
    return 0;
};

- (NSString *)description {
    return @"0(NSNull)";
}

- (NSArray *)componentsSeparatedByString:(NSString *)separator {
    return @[];
}

- (id)objectForKey:(id)key {
    return nil;
}

- (BOOL)boolValue {
    return NO;
}


@end
