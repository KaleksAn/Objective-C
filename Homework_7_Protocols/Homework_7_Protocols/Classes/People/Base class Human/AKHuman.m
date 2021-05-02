//
//  AKHuman.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import "AKHuman.h"

@implementation AKHuman

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Default";
        self.surname = @"Default";
        self.age = 0;
        self.weight = 0.0f;
        self.height = 0.0f;
        self.gender = Man;
        self.citizen = Usa;
    }
    return self;
}


#pragma mark -Methods

- (void) askMe:(NSString*) ask1 {
    NSLog(@"Your question: %@. Answer: I don't know answer... Sorry!", ask1);
}

- (void) controlCar {
    NSLog(@"I'm control car.");
}

- (void) walkToWork {
    NSLog(@"I'm go to work every day.");
}

- (void) study {
    NSLog(@"Im study. This is my seventeen homework for Protocols.");
}

- (void) saySomethig:(NSString*) phrase {
    NSLog(@"Something ;)");
}

- (void) printProperty {
    NSLog(@"Name: %@", self.name);
    NSLog(@"Surname: %@", self.surname);
    NSLog(@"Age: %ld", self.age);
    NSLog(@"Weight: %f", self.weight);
    NSLog(@"Height: %f", self.height);
    NSLog(@"Gender: %u", self.gender);
    NSLog(@"Citizen: %u", self.citizen);
    
}

@end
