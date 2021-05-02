//
//  AKActor.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKActor.h"

@implementation AKActor

#pragma mark -AKRun
//Required
- (void) slowRun {
    NSLog(@"Actor is slow run on scene");
}

- (void) fastRun {
    NSLog(@"Actor FAST run");
}

- (void) overBlockRun {
    NSLog(@"Actor is run over BLOCK!");
}

//Optional
- (NSString*) sayHello {
    return [NSString stringWithFormat:@"Hello team! I am Actor on movie."];
}

- (NSString*) howAreYou {
    return [NSString stringWithFormat:@"How are you my friend?"];
}

- (void) callFriend {
    NSLog(@"I will call my friend");
}

- (void) driveCar {
    NSLog(@"%@ drive car BMW i5", self.name);
}

- (void) relax {
    NSLog(@"I am relax on scene");
}


#pragma mark -AKJump Protocol
//Required
- (void) jumpToUp {
    NSLog(@"Actor %@ jump to Up conform Protocol JUMP!", self.name);
}

- (void) jumpOver {
    NSLog(@"Actor %@ jump over conform Protocol JUMP!", self.name);
}

- (void) jumpToLength {
    NSLog(@"Actor jump in FORWARD conform Protocol JUMP!");
}

//Optional
- (NSString*)  whatYouSeeOnTv {
    return @"I watch show on TV!";
}

- (void) goToMarket {
    NSLog(@"Actor %@ will go to market", self.name);
}

- (void) watchTv {
    NSLog(@"asd");
}


#pragma mark -AKSwim
//Required
- (void) swimSlow {
    NSLog(@"Required method SWIM SLOW from AKSwim protocol.");
}

- (void) swimFast {
    NSLog(@"Required method SWIM FAST for actor %@", self.name);
}

- (void) dive {
    NSLog(@"Actor %@ is Dive conform protocol SWIM", self.name);
}

@end
