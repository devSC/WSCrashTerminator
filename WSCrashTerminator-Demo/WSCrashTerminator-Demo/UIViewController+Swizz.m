//
//  UIViewController+Swizz.m
//  WSCrashTerminator-Demo
//
//  Created by Wilson-Yuan on 15/9/19.
//  Copyright © 2015年 Wilson-Yuan. All rights reserved.
//

#import "UIViewController+Swizz.h"
#import "NSObject+Swizz.h"

@implementation UIViewController (Swizz)

+ (void)load
{
    [self swizzWithClass:[self class] OriginSel:@selector(viewDidAppear:) newSel:@selector(swizz_viewDidAppear:)];
    [self swizzWithClass:[self class] OriginSel:@selector(viewDidDisappear:) newSel:@selector(swizz_viewDidDisappear:)];

}

- (void)swizz_viewDidAppear: (BOOL)animated
{
    
    //Call the viewDidAppear
    [self swizz_viewDidAppear:animated];
}

- (void)swizz_viewDidDisappear: (BOOL)animated
{
    
    //Call the viewDidDisappear
    [self swizz_viewDidDisappear:animated];
}
@end
