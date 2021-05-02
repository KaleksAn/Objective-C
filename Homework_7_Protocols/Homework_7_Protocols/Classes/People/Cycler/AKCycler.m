//
//  AKCycler.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKCycler.h"

@implementation AKCycler

#pragma mark -AKRun Protocol
//Required
- (void) slowRun {
    NSLog(@"Cycler slow run. AKRun Protocol");
}

- (void) fastRun {
    NSLog(@"Cycler fast run. AKRun Protocol");
}

- (void) overBlockRun {
    NSLog(@"Cycler can't run over block :(");
}

//Optional
- (NSString*) sayHello {
    return @"Hello from cycler";
}

- (NSString*) howAreYou {
    return @"Cycler say: - I am good. I took medal on marathon";
}

@end
