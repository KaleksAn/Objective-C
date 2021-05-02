//
//  AKJumper.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKJumper.h"

@implementation AKJumper

#pragma mark -AKJump Protocol
//Required
- (void) jumpToUp {
    NSLog(@"Jumper jump to up");
}

- (void) jumpToLength {
    NSLog(@"Jumper jump to length");
}

- (void) jumpOver {
    NSLog(@"Jumper jump to over block");
}

//Optional
- (void) goToMarket {
    NSLog(@"Jumper go to market");
}

- (void) watchTv {
    NSLog(@"Jumper watch  TV");
}

- (NSString*) whatYouSeeOnTv {
    return @"I watch GGG Show";
}

@end
