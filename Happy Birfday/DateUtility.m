//
//  DateUtility.m
//  Happy Birfday
//
//  Created by Mike Berlin on 3/19/13.
//  Copyright (c) 2013 Mike Berlin. All rights reserved.
//

#import "DateUtility.h"

@implementation DateUtility

+ (NSDate *)nowNowNowNowNow
{
    NSDate *nowGMT = [NSDate date];
    NSTimeZone *sysTimeZone = [NSTimeZone systemTimeZone];
    NSInteger gmtOffset = [sysTimeZone secondsFromGMT];
    
    return [[NSDate alloc] initWithTimeInterval:gmtOffset sinceDate:nowGMT];
}

+ (NSDate *)getDateFromMonth:(NSString *)month Day:(NSString *)day
{
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"MM-dd-yyyy"];
    
    NSString *birfdateString = [NSString stringWithFormat:@"%@-%@-2013", month, day];
    return [dateFormat dateFromString:birfdateString];
}

@end