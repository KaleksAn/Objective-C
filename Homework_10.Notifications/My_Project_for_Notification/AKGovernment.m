//
//  AKGovernment.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 15.08.2021.
//

#import "AKGovernment.h"

NSString* const AKGovernmentSalaryDidChangeNotification = @"AKGovernmentSalaryDidChangeNotification";
NSString* const AKGovernmentPensionDidChangeNotification = @"AKGovernmentPensionDidChangeNotification";
NSString* const AKGovernmentTaxLevelDidChangeNotification = @"AKGovernmentTaxLevelDidChangeNotification";
NSString* const AKGovernmentAveragePriceDidChangeNotification = @"AKGovernmentAveragePriceDidChangeNotification";
NSString* const AKGovernmentInflationDidChangeNotification = @"AKGovernmentInflationDidChangeNotification";

NSString* const AKGovernmentSalaryUserInfoKey = @"AKGovernmentSalaryUserInfoKey ";
NSString* const AKGovernmentPensionUserInfoKey = @"AKGovernmentPensionUserInfoKey";
NSString* const AKGovernmentTaxLevelUserInfoKey = @"AKGovernmentTaxLevelUserInfoKey";
NSString* const AKGovernmentAveragePriceUserInfoKey = @"AKGovernmentAveragePriceUserInfoKey";
NSString* const AKGovernmentInflationUserInfoKey = @"AKGovernmentInflationUserInfoKey";

@implementation AKGovernment

- (instancetype)init
{
    self = [super init];
    if (self) {
        _salary = 1000.f;
        _pension = 300.f;
        _taxLevel = 430.f;
        _averagePrice = 290.f;
        _inflation = 0.0;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(appMessage:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentActiveInfo:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
        
    }
    return self;
}


- (void) setSalary:(CGFloat) salary {
    _salary = salary;
    NSNumber* number = [NSNumber numberWithFloat:salary];
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:number
                                             forKey:AKGovernmentSalaryUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentSalaryDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


- (void) setPension:(CGFloat) pension {
    _pension = pension;
    NSNumber* number = [NSNumber numberWithFloat:pension];
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:number
                                             forKey:AKGovernmentPensionUserInfoKey];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentPensionDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


- (void) setTaxLevel:(CGFloat) taxLevel {
    _taxLevel = taxLevel;
    NSNumber* number = [NSNumber numberWithFloat:taxLevel];
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:number
                                             forKey:AKGovernmentTaxLevelUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentTaxLevelDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}

- (void) setAveragePrice:(CGFloat) averagePrice {
    _averagePrice = averagePrice;
    self.inflation = (averagePrice - _averagePrice) / averagePrice * 100;
    NSNumber* number = [NSNumber numberWithFloat:averagePrice];
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:number
                                             forKey:AKGovernmentAveragePriceUserInfoKey];
   [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentAveragePriceDidChangeNotification
                                                       object:nil
                                                      userInfo:dictionary];
    
    
    //[[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentAveragePriceDidChangeNotification object:nil];
    
}

- (void) setInflation:(CGFloat) inflation {
    _inflation = inflation;
    NSNumber* number = [NSNumber numberWithFloat:inflation];
    NSDictionary* dictionary = [NSDictionary dictionaryWithObject:number
                                             forKey:AKGovernmentInflationUserInfoKey];
    [[NSNotificationCenter defaultCenter] postNotificationName:AKGovernmentInflationDidChangeNotification
                                                        object:nil
                                                      userInfo:dictionary];
}


- (void) appMessage:(NSNotification*) notification {
    NSLog(@"Application Government go to SLEEP");
}


- (void) governmentActiveInfo:(NSNotification*) notification {
    NSLog(@"Application Government to ACTIVE");
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
