//
//  AppDelegate.m
//  Homework_06.Data Types
//
//  Created by Aleksandr Kan on 20.04.2021.
//

#import "AppDelegate.h"
#import "AKFriend.h"
#import "AKCar.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Task 1
    
    AKFriend* friend_1 = [[AKFriend alloc] init];
    friend_1.name = @"Sam";
    friend_1.gender = AKMan;
    friend_1.hand = AKRight;
    
    NSLog(@"Hand: %u", friend_1.hand);
    
    AKCar* car_1 = [[AKCar alloc] init];
    car_1.nameCar = @"BMW";
    car_1.carType = SportsCar;
    car_1.color = Black;
    car_1.seatInCar = Four;
    
    AKCar* car_2 = [[AKCar alloc] init];
    car_2.nameCar = @"AUDI";
    car_2.carType = Sedan;
    car_2.color = White;
    car_2.seatInCar = Four;
    
    AKCar* car_3 = [[AKCar alloc] init];
    car_3.nameCar = @"Ford";
    car_3.carType = SportsCar;
    car_3.color = Blue;
    car_3.seatInCar = Two;
    
    AKFriend* newFriend = [[AKFriend alloc] init];
   // newFriend.name;
    
    //NSLog(@"result %@", newFriend.name);
    
    
    NSArray* arrayCars = [NSArray arrayWithObjects:car_1, car_2, car_3, nil];
    
    for (int i = 0; i < [arrayCars count]; i++) {
        AKCar* car = (AKCar*) [arrayCars objectAtIndex:i];
        NSLog(@"");
        NSLog(@"Car name: %@", car.nameCar);
        NSLog(@"Car color: %@", [car colorCar:car.color]);
        NSLog(@"Car type: %@", [car carType:car.carType]);
        NSLog(@"Car seat: %ld", [car seatInCar:car.seatInCar]);
        
    }
    
    
    //Task 2
   
    CGRect rect = CGRectMake(5, 2, 1, 3);
    NSMutableArray* arrayPoints = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        CGPoint point = CGPointMake(arc4random() % 11, arc4random() % 11);
        [arrayPoints addObject:[NSValue valueWithCGPoint:point]];
        if (CGRectContainsPoint(rect, point)) {
            NSLog(@"Point in rect!");
            NSLog(@"Points: %@", NSStringFromCGPoint(point));
        } else {
            NSLog(@"Point not in rect!");
        }
        
    }
    
    
    for (NSValue* p in arrayPoints) {
        CGPoint pointt = [p CGPointValue];
        NSLog(@"Point value: %@", NSStringFromCGPoint(pointt));
    }
    
    
    
    //Task 3
    NSArray* arrRect = [NSArray arrayWithObjects:[NSNumber numberWithInteger:5],
                                             [NSNumber numberWithInteger:44],
                                             [NSNumber numberWithDouble:5.5], nil];
    
    NSLog(@"Integer = %ld", [[arrRect objectAtIndex:0] integerValue]);
    NSLog(@"Integer = %@", [arrRect objectAtIndex:1]);
    
    CGPoint point_1;
    point_1.x = 3;
    point_1.y = 1;

    CGPoint point_2 = CGPointMake(5, 6);
    CGPoint point_3 = CGPointMake(8, 1);
    
    CGPoint point_4;
    point_4.x = 2;
    point_4.y = 1;
    
    CGPoint point_5 = CGPointMake(7, 2);
    
    NSArray* arrayWithPoints = [NSArray arrayWithObjects:[NSValue valueWithCGPoint:point_1],
                                                     [NSValue valueWithCGPoint:point_2],
                                                     [NSValue valueWithCGPoint:point_3],
                                                     [NSValue valueWithCGPoint:point_4],
                                                     [NSValue valueWithCGPoint:point_5], nil];
    
    
    
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
