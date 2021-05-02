//
//  AKRacer.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKRacer.h"

@implementation AKRacer

#pragma mark -AKRun
//Required
- (void) slowRun {
    NSLog(@"Racer %@ slow run", self.name);
}

- (void) fastRun {
    NSLog(@"Racer %@ very fast run", self.name);
}

- (void) overBlockRun {
    NSLog(@"Racer %@ can't run over block", self.name);
}

//Optional
- (void) driveCar {
    NSLog(@"Racer %@ just drive car.", self.name);
}


@end
