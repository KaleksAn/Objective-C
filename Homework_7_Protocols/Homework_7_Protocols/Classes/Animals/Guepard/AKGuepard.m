//
//  AKGuepard.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKGuepard.h"

@implementation AKGuepard


#pragma mark -AKRun Protocol
//Required
- (void) slowRun {
    NSLog(@"Guepard slow run!");
}

- (void) fastRun {
    NSLog(@"Guepard FAST RUN!");
}

- (void) overBlockRun {
    NSLog(@"Guepard method over BLOCK RUN!");
}


//Opptional
- (void) hunt {
    NSLog(@"Guepard HUNT!");
}


@end
