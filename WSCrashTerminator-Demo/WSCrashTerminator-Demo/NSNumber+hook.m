//
//  NSNumber+hook.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSNumber+hook.h"

@implementation NSNumber (hook)

- (NSUInteger)length
{
    return 0;
}

- (id)objectForKeyedSubscript:(id)key
{
    return nil;
}
- (id)objectForKey:(id)aKey
{
    return nil;
}



@end
