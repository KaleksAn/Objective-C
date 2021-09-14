//
//  AppDelegate.m
//  Homework_13.Multithreading
//
//  Created by Aleksandr Kan on 05.09.2021.
//

#import "AppDelegate.h"
#import "Classes/AKStudent.h"
#import "Classes/AKBestStudent.h"

typedef void (^BlockPrintResult)(NSInteger answer, NSString* student);

@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.studentList = [NSMutableArray array];
    self.bestStudentList = [NSMutableArray array];
   // NSMutableArray* weakArray = [[NSMutableArray alloc] initWithObjects: nil];
    
    
    for (int i = 0; i < 5; i++) {
        AKStudent* student = [[AKStudent alloc] init];
        student.name = [NSString stringWithFormat:@"Student %i", i + 1];
        
        [self.studentList addObject:student];
       // [weakArray addObject:student];
    }
    
    
    
    for (AKStudent* student in self.studentList) {
        NSInteger randomNum = arc4random() % 10000;
        [student numberAnswer:randomNum rangeForFind:1000000 enterBlock:^(NSInteger answer, NSString * name, float time) {
            NSLog(@"Student %@ find answer %li. Time: %f", name, answer, time);
        }];
        [student answer:randomNum andRange:100000];
    }
    
    
    //FOR NSOperationQueue
    
    for (int i = 0; i < 10; i++) {
        AKBestStudent* bestStudent = [[AKBestStudent alloc] init];
        bestStudent.name = [NSString stringWithFormat:@"Best student %i", i];
        [self.bestStudentList addObject:bestStudent];
    }
    
    for (AKBestStudent* student in self.bestStudentList) {
        NSInteger random = arc4random() % 101;
        [student numberAnswer:random rangeForFind:100 enterBlock:^(NSInteger answer, NSString * _Nonnull name, float time) {
            NSLog(@"STUDENT %@ find answer %li. TIME for find: %f", name, answer, time);
        }];
    }
    
    //TEST with Operation
    AKBestStudent* studentTest = [[AKBestStudent alloc] init];
    studentTest.name = @"AK BEST STUDENT!";
    NSInteger random = arc4random() % 101;
    [studentTest numberAnswer:random rangeForFind:100 enterBlock:^(NSInteger answer, NSString * _Nonnull name, float time) {
        
    }];
    
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
