//
//  AppDelegate.m
//  Homework_15.Bitwise operations
//
//  Created by Aleksandr Kan on 22.09.2021.
//

#import "AppDelegate.h"
#import "Classes/AKStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //TASK 1
    
    NSMutableArray* studentsList = [NSMutableArray array];
    NSMutableArray* studentsTechnical = [NSMutableArray array];
    NSMutableArray* studentsHumanitarian = [NSMutableArray array];
    
    for (int i = 0; i < 100; i++) {
        
        AKStudent* student = [[AKStudent alloc] init];
        student.name = [NSString stringWithFormat:@"Student_%d", i + 1];
        student.subjects = arc4random() % 129;
        [studentsList addObject:student];
        
    }
    
    NSEnumerator* newEnum = [studentsList objectEnumerator];
    id student;
    
    while ((student = [newEnum nextObject]) != nil) {
        
        AKStudent* studentObject = (AKStudent*) student;
        NSLog(@"%@ list %@", studentObject.name, studentObject);
    }
    
    
    //TASK 2
    
    NSInteger developerCount = 0;
    
    for (AKStudent* student in studentsList) {
        //NSInteger technical = AKMath | AKEngeeniring | AKComputerSince;
        //NSInteger humanitarian = AKArt | AKBiology | AKAnatomy | AKHistory | AKPsychology;
        
        if (student.technical >= student.humanitarian) {
            [studentsTechnical addObject: student];
            developerCount = developerCount + [student developerCount];
            
        } else {
            if (student.subjects & AKBiology) {
                [student resetBiology];
            }
            
            [studentsHumanitarian addObject: student];
        }
    }
    
    NSLog(@"");
    NSLog(@"Student technial count %lu.", [studentsTechnical count]);
    NSLog(@"Developers count equal %lu", developerCount);
    NSLog(@"Student humanitarian count %lu.", [studentsHumanitarian count]);
    
    
    NSLog(@"\n");
    NSLog(@"TASK SUPERMAN");
    NSInteger randomNumber = arc4random() % INT_MAX;
    [self convertToByte: randomNumber];
    
    
    NSInteger rest = 3 % 4;
    NSLog(@"Rest %lu", rest);
    
    
   
    return YES;
}


#pragma mark - My Methods

- (void) convertToByte: (NSInteger) number {
    NSMutableString* strResult = [NSMutableString string];
    NSInteger startValue = number;
    
    while (true) {
        NSInteger result = number % 2;
        NSString* numberStr = [NSString stringWithFormat:@"%lu", result];
        [strResult insertString:numberStr atIndex:0];
        number = number >> 1;
        
        if (number == 0) {
            break;
        }
    }
    
    NSLog(@"Number %lu convert to byte code %@", startValue, strResult);
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
