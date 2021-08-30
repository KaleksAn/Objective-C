//
//  AKHuman.m
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 28.08.2021.
//

#import "AKHuman.h"

@implementation AKHuman

- (instancetype)initWithBlock:(void(^)(AKHuman*)) block {
    self = [super init];
    if (self) {
        _name = @"Default";
        _temperature = ((arc4random() % 45) + 360) / 10.f;
        
        [self performSelector:@selector(checkOk:) withObject:block afterDelay:20];
        
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, 10 * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
            [self checkOk:block];
        });
    }
    return self;
}


- (void) checkOk:(void(^)(AKHuman*)) block {
    BOOL ok = arc4random() % 2;
    
    if (!ok) {
        block(self);
    } else {
        NSLog(@"HUMAN %@ OK!", self.name);
    }
}


- (void) takePill {
    NSLog(@"HUMAN %@ take pill!", self.name);
}

- (void) makeShot {
    NSLog(@"HUMAN %@ make shot", self.name);
}


- (void)dealloc
{
    NSLog(@"HUMAN %@ DEALLOCATED!", _name);
}

@end
