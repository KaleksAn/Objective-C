//
//  AKDoctor.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 16.08.2021.
//

#import "AKDoctor.h"
#import "AKGovernment.h"

@implementation AKDoctor

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _name = @"No name";
        _salary = 1.f;
        _averagePrice = 1.f;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(changeSalary:)
                                                     name:AKGovernmentSalaryDidChangeNotification
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
                                                 selector:@selector(doctorSleepInfo:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(doctorActiveInfo:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
    }
    return self;
}



#pragma mark - Notifications

- (void) changeSalary:(NSNotification*) notification {
    NSLog(@"Salary for doctor %@", [notification.userInfo objectForKey:AKGovernmentSalaryUserInfoKey]);
}

- (void) changeAveragePrice:(NSNotification*) notification {
    NSLog(@"Average price on government %@", [notification.userInfo objectForKey:AKGovernmentAveragePriceUserInfoKey]);
}

- (void) inflationInfo:(NSNotification*) notification {
    NSNumber* inflation = [notification.userInfo objectForKey:AKGovernmentInflationUserInfoKey];
    CGFloat number = [inflation floatValue];
    
    if (number < 2.0f) {
        NSLog(@"Doctor %@ very HAPPY!", self.name);
    } else if (number > 2.f && number < 3.f) {
        NSLog(@"Well... Doctor %@ is normal...", self.name);
    } else if (number > 3 && number <= 5.f) {
        NSLog(@"Doctor %@ have BAD mood!", self.name);
    } else if (number > 5.f) {
        NSLog(@"Doctor %@ have VERY VERY BAD mood!!!", self.name);
    }
}


- (void) doctorSleepInfo:(NSNotification*) notification {
    NSLog(@"Applacation AppDoctor go to SLEEP.");
    //NSLog(@"Name: %@", self.name);
}


- (void) doctorActiveInfo:(NSNotification*) notification {
    NSLog(@"Application Doctor to ACTIVE");
}


- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
