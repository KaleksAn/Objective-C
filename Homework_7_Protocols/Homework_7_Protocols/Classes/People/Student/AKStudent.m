//
//  AKStudent.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKStudent.h"

@implementation AKStudent

#pragma mark -AKJump Protocol
//Required
- (void) jumpToUp {
    NSLog(@"Student %@ jump to up in kollege", self.name);
}

- (void) jumpToLength {
    NSLog(@"Student %@ jump for triatlon", self.name);
}

- (void) jumpOver {
    NSLog(@"Student %@ won't jump over block!", self.name);
}

//Optional
- (void) goToMarket {
    NSLog(@"Student %@ go to market after kollege.", self.name);
}

- (void) watchTv {
    NSLog(@"Student %@ watch tv after market", self.name);
}


#pragma mark -AKRun Protocol
//Required
- (void) slowRun {
    NSLog(@"Student %@ can run slow", self.name);
}

- (void) fastRun {
    NSLog(@"Student %@ can FAST run", self.name);
}

- (void) overBlockRun {
    NSLog(@"Student %@ run over BLOCK!", self.name);
}

//Optional
- (void) callFriend {
    NSLog(@"Call friend");
}

- (void) driveCar {
    NSLog(@"Student %@ study drive car", self.name);
}

- (NSString*) sayHello {
    return @"Student say Hello";
}

- (NSString*) howAreYou {
    return @"Student say Fine! :)";
}




@end
