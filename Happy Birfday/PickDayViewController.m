//
//  PickDayViewController.m
//  Happy Birfday
//
//  Created by Mike Berlin on 3/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "PickDayViewController.h"
#import "AppDelegate.h"

@interface PickDayViewController ()

@end

@implementation PickDayViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    [self populateDaysArray];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)populateDaysArray
{
    NSString *dayNumber;
    days = [NSMutableArray arrayWithObjects:nil];

    for(int i = 1; i <= 31; i++)
    {
        dayNumber = [NSString stringWithFormat:@"%d", i];
        [days addObject:dayNumber];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [days count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *dayCell = @"DayCell";
    
    UITableViewCell *tvCell = [tableView dequeueReusableCellWithIdentifier:dayCell];
    
    if (tvCell == nil)
    {
        tvCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:dayCell];
    }

    tvCell.textLabel.text = [days objectAtIndex:indexPath.row];
    return tvCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedDay = [NSString stringWithFormat:@"%@", [days objectAtIndex:indexPath.row]];
    NSLog(@"Selected Day = %@", selectedDay);

    if (selectedBirfday == Nil) selectedBirfday = [Birfday alloc];
    selectedBirfday.Day = selectedDay;

    [self dismissViewControllerAnimated:YES completion:nil];
}

@end