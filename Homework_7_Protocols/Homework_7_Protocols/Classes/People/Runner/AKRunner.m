//
//  AKRunner.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKRunner.h"

@implementation AKRunner

#pragma mark -AKRun Protocol
//Required
- (void) slowRun {
    NSLog(@"%@ runner will run very slow. This method conform protocol RUN", self.name);
}

- (void) fastRun {
    NSLog(@"%@ runner very fast run! Method from protocol AKRUN", self.name);
}

- (void) overBlockRun {
    NSLog(@"Runner %@ can't run over block conform protocol AKRUN", self.name);
}

//Optional
- (void) relax {
    NSLog(@"Runner relax conform optional method from protocol AKRUN");
}

- (NSString*) sayHello {
    return [NSString stringWithFormat:@"Hello my friend! I am runner. My name is %@", self.name];
}






@end
