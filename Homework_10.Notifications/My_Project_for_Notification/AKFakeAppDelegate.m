//
//  AKFakeAppDelegate.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 21.08.2021.
//

#import "AKFakeAppDelegate.h"
@class AppDelegate;

@implementation AKFakeAppDelegate

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSNotificationCenter* nc = [[NSNotificationCenter alloc] init];
        
        [nc addObserver:self
               selector:@selector(appWillResignActive:)
                   name:UISceneWillEnterForegroundNotification
                 object:nil];
        [nc addObserver:self
               selector:@selector(appBecomeActive:)
                   name:UISceneDidEnterBackgroundNotification
                 object:nil];
        
        //Подписка на новый класс вместо старых методов в классе Appdelegate
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(appActive:)
                                                     name:UISceneDidActivateNotification
                                                   object:nil];
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(appDeactive:)
                                                     name:UISceneWillDeactivateNotification
                                                   object:nil];
    }
    return self;
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}


- (void) applicationWillEnterForeground:(NSNotification*) notification {
    NSLog(@"Method applicationWillEnterForeground from FakeClass");
}

- (void) applicationDidBecomeActive:(NSNotification*) notification {
    NSLog(@"Method applicationWillEnterForeground from FakeClass");
}


//------------
- (void) appWillResignActive: (UIApplication*) application {
    NSLog(@"Retired will go to sleep");
}

- (void) appBecomeActive: (UIApplication*) application {
    NSLog(@"Retired wakes up");
}



- (void) appActive:(NSNotification*) notification {
    NSLog(@"AKFakeAppDelegate to RUN!");
}

- (void) appDeactive:(NSNotification *) notification {
    NSLog(@"AKFakeAppDelegate to STOP!");
}


@end
