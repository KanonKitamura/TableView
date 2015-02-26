//
//  PersonTableViewCell.h
//  album
//
//  Created by kanon kitamura on 2015/02/26.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PersonTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *name_label;
@property (weak, nonatomic) IBOutlet UIImageView *profileImageView;

@end
