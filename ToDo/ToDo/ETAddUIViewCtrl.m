//
//  ETAddToDoItemUIViewCtrl.m
//  ToDo
//
//  Created by etond on 15/1/25.
//  Copyright (c) 2015年 etond. All rights reserved.
//

#import "ETAddUIViewCtrl.h"

@interface ETAddUIViewCtrl()

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneButton;

@end

@implementation ETAddUIViewCtrl

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if (sender != self.doneButton) return ;
    
    if (self.textField.text.length > 0) {
        self.toDoItem = [[ETToDoItem alloc] init];
        self.toDoItem.itemName = self.textField.text;
        self.toDoItem.completed = NO;
    }
}




@end
