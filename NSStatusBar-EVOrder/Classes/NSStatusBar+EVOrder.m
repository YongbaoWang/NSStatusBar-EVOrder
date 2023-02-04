//
//  NSStatusBar+EVOrder.m
//  NSStatusBar+EVOrder
//
//  Created by YongBaowang on 02/04/2023.
//  Copyright (c) 2023 YongBaowang. All rights reserved.
//

#import "NSStatusBar+EVOrder.h"

@implementation NSStatusBar (EVOrder)

- (nonnull NSStatusItem *)statusItemWithLength:(CGFloat)length priority:(NSStatusBarItemPriority)priority {
    // - (id)_statusItemWithLength:(double)arg1 systemInsertOrder:(long long)arg2;
    SEL statusItemWithLengthWithPrioritySelector = NSSelectorFromString([@[@"_status", @"Item", @"With", @"Length", @":", @"system", @"Insert", @"Order", @":"] componentsJoinedByString:@""]);

    NSStatusItem *statusItem;
    if ([self respondsToSelector:statusItemWithLengthWithPrioritySelector]) {
        void *tempResultValuePtr;
        NSMethodSignature *signature = [[self class] instanceMethodSignatureForSelector:statusItemWithLengthWithPrioritySelector];
        NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
        [invocation setTarget:self];
        [invocation setSelector:statusItemWithLengthWithPrioritySelector];
        [invocation setArgument:&length atIndex:2];
        [invocation setArgument:&priority atIndex:3];
        [invocation invoke];
        [invocation getReturnValue:&tempResultValuePtr];
        statusItem = (__bridge NSStatusItem *)tempResultValuePtr;
    }

    if (!statusItem) {
        statusItem = [self statusItemWithLength:length];
    }

    return statusItem;
}

@end
