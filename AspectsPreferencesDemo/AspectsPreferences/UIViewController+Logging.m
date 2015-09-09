//
//  UIViewController+Logging.m
//  demodemodemod
//===http://tech.glowing.com/cn/method-swizzling-aop/
//  Created by victor on 15/9/9.
//  Copyright (c) 2015年 colourtime. All rights reserved.
//

#import "UIViewController+Logging.h"
#import <objc/runtime.h>
@implementation UIViewController (Logging)

+ (void)load
{
    swizleMethod([self class], @selector(viewDidAppear:), @selector(swizzled_viewDidAppear:));
     swizleMethod([self class], @selector(viewWillAppear:), @selector(swizzled_viewWillAppear:));
}


void swizleMethod(Class class,SEL originalSelector,SEL swizzleSelector)
{
    // the method might not exist in the class, but in its superclass
    Method originalMethod=class_getInstanceMethod(class, originalSelector);
    Method swizzledMethod=class_getInstanceMethod(class, swizzleSelector);
    // class_addMethod will fail if original method already exists
    BOOL didAddMethod = class_addMethod(class, originalSelector, method_getImplementation(swizzledMethod), method_getTypeEncoding(swizzledMethod));
    // the method doesn’t exist and we just added one
    if (didAddMethod) {
        class_replaceMethod(class, swizzleSelector, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }
    else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}


-(void)swizzled_viewWillAppear:(BOOL)animated
{
    [self swizzled_viewWillAppear:animated];
    
    NSLog(@"=======%@==",NSStringFromClass([self class]));
}


-(void)swizzled_viewDidAppear:(BOOL)animated
{
    [self swizzled_viewDidAppear:animated];
    [self class];
    NSLog(@"=======%@==",NSStringFromClass([self class]));
}

@end
