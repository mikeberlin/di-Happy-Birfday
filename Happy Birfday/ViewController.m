//
//  ViewController.m
//  Happy Birfday
//
//  Created by Mike Berlin on 3/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "PickMonthViewController.h"
#import "PickDayViewController.h"
#import "DateUtility.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    [self displayNumDays];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnPickMonth:(id)sender
{
    PickMonthViewController *vcPickMonth = [PickMonthViewController alloc];
    [self presentViewController:vcPickMonth animated:YES completion:nil];
}

- (IBAction)btnPickDay:(id)sender
{
    PickDayViewController *vcPickDay = [PickDayViewController alloc];
    [self presentViewController:vcPickDay animated:YES completion:nil];
}

- (void)displayNumDays
{
    if (selectedBirfday.month != Nil && selectedBirfday.day != Nil)
    {
        NSDateComponents *comps = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] components:NSDayCalendarUnit
                                               fromDate:[DateUtility nowNowNowNowNow]
                                                 toDate:[DateUtility getDateFromMonth:selectedBirfday.month Day:selectedBirfday.day]
                                                options:0];

        int numDays = [comps day];
        if (numDays < 0) numDays = (numDays * -1) + 365;

        _lblNumDaysToBirfday.text = [NSString stringWithFormat:@"%d days till your birfday!", numDays];
        _lblNumDaysToBirfday.numberOfLines = 0;
        _lblNumDaysToBirfday.lineBreakMode = NSLineBreakByWordWrapping;
    }
}

@end