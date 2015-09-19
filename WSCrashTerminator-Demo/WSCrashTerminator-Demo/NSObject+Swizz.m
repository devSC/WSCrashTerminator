//
//  NSObject+Swizz.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "NSObject+Swizz.h"

#import <objc/runtime.h>

@implementation NSObject (Swizz)

+ (void)swizzWithClass: (Class)class OriginSel: (SEL)originSel newSel: (SEL)newSel
{
    Method originMeth = class_getInstanceMethod(class, originSel);
    Method newMeth = class_getInstanceMethod(class, newSel);
    IMP newMethodImp = method_getImplementation(newMeth);
//    const char *newMethodEncoding = method_getTypeEncoding(newMeth);
    BOOL addMethodSuccess = class_addMethod(class, newSel, newMethodImp, method_getTypeEncoding(newMeth));
    if (addMethodSuccess) {
        class_replaceMethod(class, newSel, newMethodImp, method_getTypeEncoding(newMeth));
    } else {
        method_exchangeImplementations(originMeth, newMeth);
    }
}


@end
