//
//  RecordUserViewController.h
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecordUserViewController : UITableViewController <NSURLConnectionDelegate>
{
    NSURLConnection *connection;
    NSMutableData *xmlData;
    IBOutlet UIActivityIndicatorView *activityIndicator;
}

@property (weak, nonatomic) IBOutlet UITextField *name;

@property (weak, nonatomic) IBOutlet UITextField *phone;

@property (weak, nonatomic) IBOutlet UITextField *email;

- (IBAction)record:(id)sender;
- (void) attemptRecord;

@end
