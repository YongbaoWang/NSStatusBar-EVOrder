//
//  NSStatusBar+EVOrder.h
//  NSStatusBar+EVOrder
//
//  Created by YongBaowang on 02/04/2023.
//  Copyright (c) 2023 YongBaowang. All rights reserved.
//

#import <Cocoa/Cocoa.h>

typedef NS_ENUM(NSInteger, NSStatusBarItemPriority) {
    // on the left of system status bar
    NSStatusBarItemPriorityNormal     = -1,
    // behind the system icons, but in front of the custom icons
    NSStatusBarItemPrioritySystem     = 10,
    // in front of the system icons
    NSStatusBarItemPrioritySystemHigh = 0,
};

@interface NSStatusBar (EVOrder)

/// Returns a newly created status item that has been allotted a specified space within the status bar.
/// - Parameters:
///   - length: A constant that specifies whether the status item is of fixed width, or variable width. The valid constants are described in Status Bar Item Length.
///   - priority: The position priority of newly created status item.
- (nonnull NSStatusItem *)statusItemWithLength:(CGFloat)length priority:(NSStatusBarItemPriority)priority;

@end
