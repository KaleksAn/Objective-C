//
//  AKBusinessman.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 17.08.2021.
//

#import "AKBusinessman.h"
#import "AKGovernment.h"

@implementation AKBusinessman
- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"No name";
        _averagePrice = 1.f;
        _taxLevel = 1.f;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(taxLevelChange:)
                                                     name:AKGovernmentTaxLevelDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(averagePriceChange:)
                                                     name:AKGovernmentAveragePriceDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(inflationInfo:)
                                                     name:AKGovernmentInflationDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(businessmanSleepInfo:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(businessmanActiveInfo:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
        
    }
    return self;
}


- (void) taxLevelChange:(NSNotification*) notification {
    NSLog(@"Tax level for businessman's is change. Tax level total sum: %@", [notification.userInfo objectForKey:AKGovernmentTaxLevelUserInfoKey]);
}

- (void) averagePriceChange:(NSNotification*) notification {
    NSLog(@"Average price for businessman's is change. Average price total sum: %@", [notification.userInfo objectForKey:AKGovernmentAveragePriceUserInfoKey]);
}

- (void) inflationInfo:(NSNotification*) notification {
    NSNumber* inflation = [notification.userInfo objectForKey:AKGovernmentInflationUserInfoKey];
    CGFloat number = [inflation floatValue];
    
    if (number < 2.0f) {
        NSLog(@"Businessman %@ VERY GOOD!", self.name);
    } else if (number > 2.f && number < 3.f) {
        NSLog(@"Well... Businessman %@ is NORMAL mood...", self.name);
    } else if (number > 3 && number <= 5.f) {
        NSLog(@"Businessman %@ have dipression!", self.name);
    } else if (number > 5.f) {
        NSLog(@"Businessman %@ have VERY DEEP DIPRESSION!!! OMG!", self.name);
    }
}

- (void) businessmanSleepInfo:(NSNotification*) notofocation {
    NSLog(@"Application Buisnessman go to SLEEP.");
}


- (void) businessmanActiveInfo:(NSNotification*) notification {
    NSLog(@"Application Businessman to ACTIVE");
}


- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
