//
//  NSObject+Swizz.h
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Swizz)

+ (void)swizzWithClass: (Class)class OriginSel: (SEL)originSel newSel: (SEL)newSel;

@end
