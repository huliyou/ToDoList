//
//  ETToDoItem.m
//  ToDo
//
//  Created by etond on 15/1/25.
//  Copyright (c) 2015年 etond. All rights reserved.
//

#import "ETToDoItem.h"

@interface ETToDoItem()

@property (nonatomic) NSDate *completeDate;

@end

@implementation ETToDoItem

- (void) setItemName:(NSString *)itemName
{
    _itemName = itemName;
    _createDate = [NSDate date];
}

- (void) markedAsCompleted:(BOOL)isComplete
{
    if (isComplete) {
        self.completed = true;
        [self setCompleteDate];
    }
}

- (void) setCompleteDate
{
    if (self.completed) {
        self.completeDate = [NSDate date];
    } else {
        self.completeDate = nil;
    }
    
}

@end
