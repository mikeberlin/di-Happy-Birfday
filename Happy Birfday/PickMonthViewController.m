//
//  PickMonthViewController.m
//  Happy Birfday
//
//  Created by Mike Berlin on 3/14/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "PickMonthViewController.h"
#import "AppDelegate.h"

@interface PickMonthViewController ()

@end

@implementation PickMonthViewController

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
    
    months = [NSArray arrayWithObjects:@"January", @"Febuary", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [months count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *tableCell = @"MonthCell";
    
    UITableViewCell *tvCell = [tableView dequeueReusableCellWithIdentifier:tableCell];

    if (tvCell == nil)
    {
        tvCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableCell];
    }
    
    tvCell.textLabel.text = [months objectAtIndex:indexPath.row];
    return tvCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *selectedMonth = [NSString stringWithFormat:@"%d", indexPath.row + 1];
    NSLog(@"Selected Month = %@", selectedMonth);

    if (selectedBirfday == Nil) selectedBirfday = [Birfday alloc];
    selectedBirfday.Month = selectedMonth;

    [self dismissViewControllerAnimated:YES completion:nil];
}

@end