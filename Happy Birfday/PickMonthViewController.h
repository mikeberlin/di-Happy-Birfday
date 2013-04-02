//
//  PickMonthViewController.h
//  Happy Birfday
//
//  Created by Mike Berlin on 3/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickMonthViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *months;
}

@end