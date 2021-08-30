//
//  AKPatient.m
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 28.08.2021.
//

#import "AKPatient.h"


@implementation AKPatient

- (instancetype)init
{
    self = [super init];
    __weak AKPatient* patient = self;
    
    if (self) {
        _temperature = 0.0;
        
        self.block = ^{
            if (patient.temperature > 36.6f && patient.temperature < 38.0f) {
                NSLog(@"Patient %@ have temperature %f", patient.name, patient.temperature);
                [patient takePill];
            } else if (patient.temperature > 38.0f) {
                NSLog(@"Patient %@ have temperature %f", patient.name, patient.temperature);
                [patient makeShot];
            } else if (patient.temperature < 36.6f) {
                NSLog(@"Patient %@ should rest", patient.name);
            }
        };
        
        NSInteger timer = arc4random() % 10 + 5;
        
        [self performSelector:@selector(checkOk:) withObject:self.block afterDelay:timer];
        
        
    }
    return self;
}


- (BOOL) youOk:(CheckBlock) block {
    BOOL ok = arc4random() % 2;
    
    if (!ok) {
        block();
    }
    return ok;
}


- (void) checkOk:(void(^)(void)) block {
    BOOL ok = arc4random() % 2;
    
    if (!ok) {
        block();
    } else {
        NSLog(@"Patient %@ OK!", self.name);
    }
}


- (void) takePill {
    NSLog(@"Patient %@ take pill!", self.name);
}

- (void) makeShot {
    NSLog(@"Patient %@ make shot", self.name);
}

@end
