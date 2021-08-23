//
//  AppDelegate.m
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 15.08.2021.
//

#import "AppDelegate.h"
#import "AKGovernment.h"
#import "AKDoctor.h"
#import "AKPensioner.h"
#import "AKBusinessman.h"
#import "AKFakeAppDelegate.h"


@interface AppDelegate ()

@property (strong, nonatomic) AKGovernment* government;
@property (strong, nonatomic) AKDoctor* doctor;
@property (strong, nonatomic) AKBusinessman* businessman;
@property (strong, nonatomic) AKPensioner* pensioner;
@property (strong, nonatomic) AKFakeAppDelegate* fakeClass;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKFakeAppDelegate* fakeObject = [[AKFakeAppDelegate alloc] init];
    
    AKDoctor* doctor_1 = [[AKDoctor alloc] init];
    doctor_1.name = @"Dr. House";
    doctor_1.salary = self.government.salary;
    
    AKPensioner* pensioner_1 = [[AKPensioner alloc] init];
    pensioner_1.name = @"Ted";
    pensioner_1.pension = self.government.pension;
    pensioner_1.averagePrice = self.government.averagePrice;
    
    AKBusinessman* businessman_1 = [[AKBusinessman alloc] init];
    businessman_1.name = @"Rick";
    businessman_1.averagePrice = self.government.averagePrice;
    businessman_1.taxLevel = self.government.taxLevel;
    
    
    self.government = [[AKGovernment alloc] init];
    self.doctor = doctor_1;
    self.businessman = businessman_1;
    self.pensioner = pensioner_1;
    
    self.fakeClass = fakeObject;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(salaryPrint:)
                                                 name:AKGovernmentSalaryDidChangeNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(pensionPrint:)
                                                 name:AKGovernmentPensionDidChangeNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(averagePricePrint:)
                                                 name:AKGovernmentAveragePriceDidChangeNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(taxLevelPrint:)
                                                 name:AKGovernmentTaxLevelDidChangeNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(appNotificationSleep:)
                                                name:UIApplicationWillResignActiveNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                            selector:@selector(applicationActivInfo:)
                                                 name:UIApplicationDidBecomeActiveNotification
                                               object:nil];
    
    
    
    
    
    self.government.salary = 1500.f;
    self.government.pension = 800.f;
    self.government.averagePrice = 200.f;
    self.government.taxLevel = 745.f;
    
    self.government.salary = 330.f;
    self.government.salary = 2300.f;
    
    
    self.government.salary = 5000.f;
    self.government.pension = 2000.f;
    self.government.averagePrice = 990.f;
    self.government.taxLevel = 1200.f;
    
    
    
    
    
    
    
    return YES;
}

- (void) pensionPrint:(NSNotification*) notification {
    NSNumber* number = [notification.userInfo objectForKey:AKGovernmentPensionUserInfoKey];
    CGFloat value = [number floatValue];
    NSLog(@"PENSION - %f", value);
}

- (void) averagePricePrint:(NSNotification*) notification {
    NSNumber* number = [notification.userInfo objectForKey:AKGovernmentAveragePriceUserInfoKey];
    CGFloat value = [number floatValue];
    NSLog(@"AVERAGE PRICE - %f", value);
}

- (void) taxLevelPrint:(NSNotification*) notification {
    NSNumber* number = [notification.userInfo objectForKey:AKGovernmentTaxLevelUserInfoKey];
    CGFloat value = [number floatValue];
    NSLog(@"TAX LEVEL - %f", value);
}

- (void) salaryPrint:(NSNotification*) notification {
    NSNumber* value = [notification.userInfo objectForKey:AKGovernmentSalaryUserInfoKey];
    CGFloat number = [value floatValue];
    
    NSLog(@"SALARY - %f", number);
}

#pragma mark - Notifications Method's



- (void) appNotificationSleep:(NSNotification*) notification {
    NSLog(@"AppDelegate go to SLEEP.");
}

- (void) applicationActivInfo:(NSNotification*) notification {
    NSLog(@"AppDelegate become ACTIVE");
}

- (void) dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void) applicationDidBecomeActive:(UIApplication *)application {
    NSLog(@"Method applicationDidBecomeActive become active from Appdelegate class");
}

- (void) applicationWillResignActive:(UIApplication *)application {
    NSLog(@"Method applicationDidBecomeActive become active from Appdelegate class");
}

- (void) applicationWillTerminate:(UIApplication *)application {
    NSLog(@"Method Terminate become active from Appdelegate class");
}

- (void) applicationDidEnterBackground:(UIApplication *)application {
    NSLog(@"Method applicationDidEnterBackground become active from Appdelegate class");
}

- (void) applicationWillEnterForeground:(UIApplication *)application {
    NSLog(@"Method applicationWillEnterForeground become active from Appdelegate class");
}



#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}






@end
