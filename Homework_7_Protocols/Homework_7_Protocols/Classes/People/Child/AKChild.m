//
//  AKChild.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKChild.h"

@implementation AKChild

#pragma mark -AKJump Protocol
- (void) jumpToUp {
    NSLog(@"Child %@ will jump to UP", self.name);
}

- (void) jumpToLength {
    NSLog(@"Child %@ jump to length", self.name);
}

- (void) jumpOver {
    NSLog(@"Child jump to over block");
}

//Optional
- (NSString*) whatYouSeeOnTv {
    return [NSString stringWithFormat:@"I see animation %@", self.favoriteMovie];
}


#pragma mark -AKRun Protocol
//Required
- (void) slowRun {
    NSLog(@"Run slowly");
}

- (void) fastRun {
    NSLog(@"Child, Run FAST!");
}

- (void) overBlockRun {
    NSLog(@"Child %@ run over block", self.name);
}

//Optional
- (NSString*) sayHello {
    return [NSString stringWithFormat:@"Hi! Sayd child %@", self.name];
}


@end
