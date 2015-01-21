//
//  ToDoItem.h
//  ToDoList
//
//  Created by Leiyou Who on 1/20/15.
//  Copyright (c) 2015 Leiyou Who. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ToDoItem : NSObject

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;


@end
