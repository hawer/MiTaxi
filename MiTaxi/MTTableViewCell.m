//
//  MTTableViewCell.m
//  MiTaxi
//
//  Created by Hawer Torres on 8/04/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import "MTTableViewCell.h"

@implementation MTTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
