//
//  ETToDoItem.h
//  ToDo
//
//  Created by etond on 15/1/25.
//  Copyright (c) 2015年 etond. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ETToDoItem : NSObject

@property (nonatomic, strong) NSString *itemName;
@property (nonatomic) BOOL completed;
@property (nonatomic) NSDate *createDate;

- (void) markedAsCompleted:(BOOL)isComplete;
- (void) setCompleteDate;


@end
