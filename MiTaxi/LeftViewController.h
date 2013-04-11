//
//  LeftViewController.h
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LeftViewController : UIViewController  <UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *tableViewMenu;
    NSMutableArray *items;
}
@end
