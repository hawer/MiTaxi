//
//  MTTableViewCell.h
//  MiTaxi
//
//  Created by Hawer Torres on 8/04/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *title;

@end
