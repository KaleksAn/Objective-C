//
//  AKMonkey.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKMonkey.h"

@implementation AKMonkey

#pragma mark -AKJump Protocol
//Required
- (void) jumpToUp {
    NSLog(@"Monkey jump UP");
}

- (void) jumpToLength {
    NSLog(@"Monkey jump to length");
}

- (void) jumpOver {
    NSLog(@"Monkey jump to over");
}

@end
