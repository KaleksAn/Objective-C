//
//  AKDog.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKDog.h"

@implementation AKDog

#pragma mark -AKRun Protocol

- (void) slowRun {
    NSLog(@"Comand_1: Dog %@, very slow run", self.name);
}

- (void) fastRun {
    NSLog(@"Comand 2 for dog: Dog %@, fast run to home", self.name);
}

- (void) overBlockRun {
    NSLog(@"Comand_3: Dog %@, RUN OVER BLOCK", self.name);
}

#pragma mark -AKJump Protocol

- (void) jumpToUp {
    NSLog(@"Animal Dog jump to Up");
}

- (void) jumpToLength {
    NSLog(@"Animal DOG jump forward");
}

- (void) jumpOver {
    NSLog(@"Dog Jump over Head!");
}

#pragma mark -AKSwim Protocol
- (void) swimSlow {
    NSLog(@"Dog very slow swim. Animal method for protocol Swim");
}

- (void) swimFast {
    NSLog(@"Dog very fast swim");
}

- (void) dive {
    NSLog(@"Dog dive on pool. Test message for homework_7");
}


@end
