//
//  ViewController.h
//  album
//
//  Created by kanon kitamura on 2015/02/26.
//  Copyright (c) 2015年 myname. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PersonTableViewCell.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    IBOutlet UITableView *sotugyo_TableView;


NSMutableArray *nameArray;
NSMutableArray *imageArray;
NSMutableArray *messageArray;
NSMutableArray *syokaiArray;

}
@end

