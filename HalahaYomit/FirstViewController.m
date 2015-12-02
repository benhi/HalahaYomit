//
//  FirstViewController.m
//  HalahaYomit
//
//  Created by Benjamin HALIMI on 23/11/2015.
//  Copyright © 2015 Benjamin HALIMI. All rights reserved.
//

#import "FirstViewController.h"
#import "KCZmanimCalendar.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    31.762041, 35.196781
    KCGeoLocation *location = [[KCGeoLocation alloc] initWithLatitude:31.762041 andLongitude:35.196781 andTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Jerusalem"]];
    KCAstronomicalCalendar *calendar = [[KCAstronomicalCalendar alloc] initWithLocation:location];
    _sunrise = [calendar sunrise];
    
    if ([_sunrise timeIntervalSinceNow] < 0.0)
    {
        NSDate *tomorrow = [[NSDate date] dateByAddingTimeInterval:86400];
        KCAstronomicalCalendar *calendar = [[KCAstronomicalCalendar alloc] initWithLocation:location andDate:tomorrow];
        _sunrise = [calendar sunrise];
    }
    
    [self updateCountdown];
    
    
    
    ////////////////////////////////////////////////////////////////
    NSDateComponents *comps = [[NSDateComponents alloc] init];
    [comps setDay:1];
    [comps setMonth:12];
    [comps setYear:2015];
    [comps setHour:20];
    [comps setMinute:44];
    NSDate *futureDate = [[NSCalendar currentCalendar] dateFromComponents:comps];// Tell me when it's 10 minutes before this date.
    
    NSDate *reminderDate = [futureDate dateByAddingTimeInterval:-1 * 60 * 10];  // Date 10 minutes earlier.
    NSDate *now = [NSDate date];
    
    if ([reminderDate timeIntervalSinceDate:now] < 0)
    {
        // It is currently within 10 minutes of future date.
    }
    else
    {
        // Schedule a timer to fire in the number of seconds between
        // the current date and our desired reminder date.
        [NSTimer scheduledTimerWithTimeInterval:[reminderDate timeIntervalSinceDate:now]
                                         target:self
                                       selector:@selector(timerHandler:)
                                       userInfo:nil
                                        repeats:NO];
    }

    
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init] ;
    [dateFormatter setDateFormat:@"hh:mm:ss"];
    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithName:@"Asia/Jerusalem"]];
    NSString *labelData = [dateFormatter stringFromDate:futureDate];
    _lblDisplayNets.text = labelData;

}

- (void)timerHandler:(NSTimer *)timer
{
    // It's now within 10 minutes of future date.
}

- (void)updateCountdown
{
    
    NSTimeInterval timeInterval = [_sunrise timeIntervalSinceNow];
    NSInteger ti = (NSInteger)timeInterval;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    NSInteger hours = (ti / 3600);
    _lblDisplayNets.text = [NSString stringWithFormat:@"%02ld:%02ld:%02ld", (long)hours, (long)minutes, (long)seconds];
    [self performSelector:@selector(updateCountdown) withObject:nil afterDelay:0.1f];
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
