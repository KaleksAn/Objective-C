//
//  AKPensioner.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 17.08.2021.
//

#import "AKPensioner.h"
#import "AKGovernment.h"

@implementation AKPensioner

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"No name";
        _pension = 1.f;
        _averagePrice = 1.f;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pensionChange:)
                                                     name:AKGovernmentPensionDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(changeAveragePrice:)
                                                     name:AKGovernmentAveragePriceDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(inflationInfo:)
                                                     name:AKGovernmentInflationDidChangeNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pensionerSleepInfo:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(pensionerActiveInfo:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
    }
    return self;
}


- (void) pensionChange:(NSNotification*) notification {
    NSLog(@"Pension change. Pension total: %@", [notification.userInfo objectForKey:AKGovernmentPensionUserInfoKey]);
}

- (void) changeAveragePrice:(NSNotification*) notification {
    NSLog(@"Average price is change. Total averagePrice: %@", [notification.userInfo objectForKey:AKGovernmentAveragePriceUserInfoKey]);
}

- (void) inflationInfo:(NSNotification*) notification {
    NSNumber* inflation = [notification.userInfo objectForKey:AKGovernmentInflationUserInfoKey];
    CGFloat number = [inflation floatValue];
    
    if (number < 2.0f) {
        NSLog(@"Pensioner %@ feel so good!", self.name);
    } else if (number > 2.f && number < 3.f) {
        NSLog(@"Pensioner %@ is have BAD mood...", self.name);
    } else if (number > 3 && number <= 5.f) {
        NSLog(@"Pensioner %@ to CRY!!", self.name);
    } else if (number > 5.f) {
        NSLog(@"Pensioner %@ to have pain and one more CRY...!", self.name);
    }
}


- (void) pensionerSleepInfo:(NSNotification*) notification {
    NSLog(@"Application Pensioner go to SLEEP.");
}


- (void) pensionerActiveInfo:(NSNotification*) notification {
    NSLog(@"Application Pensioner to ACTIVE");
}


- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
