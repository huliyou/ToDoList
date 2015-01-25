//
//  ETListUITableViewCtrl.m
//  ToDo
//
//  Created by etond on 15/1/25.
//  Copyright (c) 2015年 etond. All rights reserved.
//

#import "ETListUITableViewCtrl.h"
#import "ETToDoItem.h"

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
    [self.toDoItems addObject:fst];
    
    ETToDoItem *snd = [[ETToDoItem alloc] init];
    snd.itemName = @"second item";
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
    //cell.detailTextLabel.text = (NSString*)item.createDate;
    cell.detailTextLabel.text = [item.createDate description];
    
    return cell;
}



@end
