/**
 *  NSCalendar+DateManipulation.m
 *  KosherCocoa 3
 *
 *  Created by Moshe Berman on 4/10/13.
 *  Updated by Moshe Berman on 11/12/15.
 *
 *  Use of KosherCocoa 3 is governed by the LGPL 2.1 License.
 */

#import "NSCalendar+DateManipulation.h"

@implementation NSCalendar (DateManipulation)

#pragma mark - Add Units

- (NSDate *)dateByAddingSeconds:(NSUInteger)seconds toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setSecond:seconds];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingMinutes:(NSUInteger)minutes toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setMinute:minutes];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingHours:(NSUInteger)hours toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setHour:hours];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingDays:(NSUInteger)days toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setDay:days];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingWeeks:(NSUInteger)weeks toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setWeekOfYear:weeks];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingMonths:(NSUInteger)months toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setMonth:months];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateByAddingYears:(NSUInteger)years toDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setYear:years];
    return [self dateByAddingComponents:c toDate:date options:0];
}

#pragma mark - Subtract Units

- (NSDate *)dateBySubtractingSeconds:(NSUInteger)seconds fromDate:(NSDate *)date
{
 
    NSDateComponents *c = [NSDateComponents new];
    [c setSecond:-seconds];
    return [self dateByAddingComponents:c toDate:date options:0];
}
- (NSDate *)dateBySubtractingMinutes:(NSUInteger)minutes fromDate:(NSDate *)date;
{
    NSDateComponents *c = [NSDateComponents new];
    [c setMinute:-minutes];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingHours:(NSUInteger)hours fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setHour:-hours];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingDays:(NSUInteger)days fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setDay:-days];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingWeeks:(NSUInteger)weeks fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setWeekOfYear:-weeks];
    return [self dateByAddingComponents:c toDate:date options:0];
}

- (NSDate *)dateBySubtractingMonths:(NSUInteger)months fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setMonth:-months];
    return [self dateByAddingComponents:c toDate:date options:0];
}


- (NSDate *)dateBySubtractingYears:(NSUInteger)years fromDate:(NSDate *)date
{
    NSDateComponents *c = [NSDateComponents new];
    [c setYear:-years];
    return [self dateByAddingComponents:c toDate:date options:0];
}


@end
