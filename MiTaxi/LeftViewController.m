//
//  LeftViewController.m
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import "LeftViewController.h"
#import "MenuItem.h"
#import "TableViewCell.h"

@interface LeftViewController ()

@end

@implementation LeftViewController

-(void) viewDidLoad{
    
    MenuItem *menu_profile = [[MenuItem alloc]init];
    [menu_profile setTitle:@"Perfil"];
    [menu_profile setIcon:[UIImage imageNamed:@"logosymb"]];
    
    MenuItem *menu_address = [[MenuItem alloc]init];
    [menu_address setTitle:@"Direcciones"];
    [menu_address setIcon:[UIImage imageNamed:@"logosymb"]];
    
    MenuItem *menu_about = [[MenuItem alloc]init];
    [menu_about setTitle:@"Acerca de MiTaxi"];
    [menu_about setIcon:[UIImage imageNamed:@"logosymb"]];
    
    items = [NSArray arrayWithObjects: menu_profile, menu_address, menu_about, nil];
    
    [tableViewMenu setDataSource:self];
    [tableViewMenu setDelegate:self];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [items count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellItem"];
    
    MenuItem *object = items[indexPath.row];
    
    cell.title.text = object.title;
    cell.image.image= object.icon;
    
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        [items removeObjectAtIndex:indexPath.row];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
    }
}


@end
