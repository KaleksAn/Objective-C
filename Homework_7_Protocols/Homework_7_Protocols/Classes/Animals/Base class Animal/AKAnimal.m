//
//  AKAnimal.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import "AKAnimal.h"
#import <UIKit/UIKit.h>

@implementation AKAnimal

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.kind = @"Default";
        self.name = @"Default";
        self.age = 0;
        self.height = 0.0;
        self.weight = 0.0;
        self.gender = Boy;
        self.countLegs = 0;
    }
    return self;
}


#pragma mark -Methods

- (void) takeFood {
    NSLog(@"I am will take food");
}

- (void) lieDown {
    NSLog(@"Lie down.");
}

- (void) walk {
    NSLog(@"Animal to walk.");
}

- (void) printProperty {
    NSLog(@"Kind: %@", self.kind);
    NSLog(@"Name: %@", self.name);
    NSLog(@"Age: %ld", self.age);
    NSLog(@"Weight: %f", self.weight);
    NSLog(@"Height: %f", self.height);
    NSLog(@"Gender: %u", self.gender);
    NSLog(@"Count legs: %ld", self.countLegs);
    
}

@end
