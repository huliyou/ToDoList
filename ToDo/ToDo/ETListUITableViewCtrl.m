//
//  ETListUITableViewCtrl.m
//  ToDo
//
//  Created by etond on 15/1/25.
//  Copyright (c) 2015年 etond. All rights reserved.
//

#import "ETListUITableViewCtrl.h"
#import "ETToDoItem.h"
#import "ETAddUIViewCtrl.h"

@implementation ETListUITableViewCtrl

- (void) viewDidLoad
{
    [super viewDidLoad];
    
    self.toDoItems = [[NSMutableArray alloc] init];
    [self loadInitData];
}

- (void) loadInitData
{
    ETToDoItem *fst = [[ETToDoItem alloc] init];
    fst.itemName = @"first item";
    fst.completed = false;
    [self.toDoItems addObject:fst];
    
    ETToDoItem *snd = [[ETToDoItem alloc] init];
    snd.itemName = @"second item";
    snd.completed = false;
    [self.toDoItems addObject:snd];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.toDoItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString* identify = @"TDListCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identify forIndexPath:indexPath];
    
    ETToDoItem *item = [self.toDoItems objectAtIndex:indexPath.row];
    
    cell.textLabel.text = item.itemName;
    cell.detailTextLabel.text = [item.createDate description];
    cell.accessoryType = item.completed ? UITableViewCellAccessoryCheckmark : UITableViewCellAccessoryNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:false];
    
    
    ETToDoItem *item = [self.toDoItems objectAtIndex:indexPath.row];
    item.completed = !item.completed;
    item.createDate = item.createDate;
    item.itemName = item.itemName;
    
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationNone];
    
}

- (IBAction) unwindToList:(UIStoryboardSegue *) segue
{
    ETAddUIViewCtrl* source = [segue sourceViewController];
    ETToDoItem *item = source.toDoItem;
    
    if (item != nil) {
        [self.toDoItems addObject:item];
        [self.tableView reloadData];
    }
}

@end
