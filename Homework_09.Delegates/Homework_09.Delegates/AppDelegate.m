//
//  AppDelegate.m
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import "AppDelegate.h"
#import "AKPatient.h"
#import "AKDoctor.h"
#import "AKBadDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKDoctor* doctor = [[AKDoctor alloc] init];
    doctor.name = @"Doctor House";
    doctor.expYears = 3;
    
    AKBadDoctor* badDoctor = [[AKBadDoctor alloc] init];
    badDoctor.name = @"Bad Doctor";
    
    AKPatient* patient_1 = [[AKPatient alloc] init];
    patient_1.name = @"Rick";
    patient_1.temperature = 36.6f;
    patient_1.painHands = arc4random() % 2;
    patient_1.painHeart = arc4random() % 2;
    patient_1.painLegs = arc4random() % 2;
    patient_1.painStomach = arc4random() % 2;
    patient_1.painTooth = arc4random() % 2;
    patient_1.doctor = doctor;
    
    
    AKPatient* patient_2 = [[AKPatient alloc] init];
    patient_2.name = @"Morty";
    patient_2.temperature = 36.9f;
    patient_2.painHands = arc4random() % 2;
    patient_2.painHeart = arc4random() % 2;
    patient_2.painLegs = arc4random() % 2;
    patient_2.painStomach = arc4random() % 2;
    patient_2.painTooth = arc4random() % 2;
    patient_2.doctor = doctor;
    
    
    AKPatient* patient_3 = [[AKPatient alloc] init];
    patient_3.name = @"Bob";
    patient_3.temperature = 41.6f;
    patient_3.painHands = arc4random() % 2;
    patient_3.painHeart = arc4random() % 2;
    patient_3.painLegs = arc4random() % 2;
    patient_3.painStomach = arc4random() % 2;
    patient_3.painTooth = arc4random() % 2;
    patient_3.doctor = doctor;
    
    
    AKPatient* patient_4 = [[AKPatient alloc] init];
    patient_4.name = @"Jack";
    patient_4.temperature = 38.5f;
    patient_4.painHands = arc4random() % 2;
    patient_4.painHeart = arc4random() % 2;
    patient_4.painLegs = arc4random() % 2;
    patient_4.painStomach = arc4random() % 2;
    patient_4.painTooth = arc4random() % 2;
    patient_4.doctor = doctor;
    
    
    
    AKPatient* patient_5 = [[AKPatient alloc] init];
    patient_5.name = @"Fred";
    patient_5.temperature = 39.0f;
    patient_5.painHands = arc4random() % 2;
    patient_5.painHeart = arc4random() % 2;
    patient_5.painLegs = arc4random() % 2;
    patient_5.painStomach = arc4random() % 2;
    patient_5.painTooth = arc4random() % 2;
    patient_5.doctor = doctor;
    
    
    
    NSLog(@"Patient  %@ is %@", patient_1.name, [patient_1 youOk] ? @"GOOD" : @"BAD");
    NSLog(@"Patient  %@ is %@", patient_2.name, [patient_2 youOk] ? @"GOOD" : @"BAD");
    NSLog(@"Patient  %@ is %@", patient_3.name, [patient_3 youOk] ? @"GOOD" : @"BAD");
    NSLog(@"Patient  %@ is %@", patient_4.name, [patient_4 youOk] ? @"GOOD" : @"BAD");
    NSLog(@"Patient  %@ is %@", patient_5.name, [patient_5 youOk] ? @"GOOD" : @"BAD");
    
    //Task 1
    NSLog(@"");
    NSLog(@"Task 1");
    NSMutableArray*  raportList  = [[NSMutableArray alloc] init];
    NSLog(@"RAPORT HAVE NOTE %lu", [raportList count]);
    
    NSArray* patients = [NSArray arrayWithObjects:patient_1,
                                              patient_2,
                                              patient_3,
                                              patient_4,
                                              patient_5, nil];
    
    for (int i = 0; i < [patients count]; i++) {
        AKPatient* patient = [patients objectAtIndex:i];
        NSLog(@"Ptient %@ now feel %@", patient.name, [patient nowYouOk] ? @"FEEL GOOD" : @"FEEL BAD");
        [patient.doctor doctorOtherCheck:patient];
        [patient.doctor doctorCheckBody:patient];
        
        NSLog(@"RATING: %@", patient.ratingForDoctor ? @"YES" : @"NO");
    }
    NSLog(@"RAPORT__________________________________");
    [doctor printRaport];

    
    for (AKPatient* patient in patients) {
        if (!patient.ratingForDoctor) {
            patient.ratingForDoctor = YES;
            if (patient.doctor == doctor) {
                patient.doctor = badDoctor;
            } else if (patient.doctor == badDoctor) {
                patient.doctor = doctor;
            }
        }
        
        NSLog(@"%@ rating %@",patient.name, patient.ratingForDoctor ? @"YES" : @"NO");
        
    }
    
    NSN
    
    
    return YES;
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
