//
//  ViewController.h
//  Happy Birfday
//
//  Created by Mike Berlin on 3/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Birfday.h"

@interface ViewController : UIViewController

@property (strong, nonatomic) Birfday *selectedBirfday;
@property (weak, nonatomic) IBOutlet UILabel *lblNumDaysToBirfday;

- (IBAction)btnPickMonth:(id)sender;
- (IBAction)btnPickDay:(id)sender;

@end