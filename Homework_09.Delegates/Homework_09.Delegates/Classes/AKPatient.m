//
//  AKPatient.m
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import "AKPatient.h"

@interface AKPatient ()

@end


@implementation AKPatient

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Patient";
        self.temperature = 36.6;
        self.painHeart = TRUE;
        self.painHands = TRUE;
        self.painLegs = TRUE;
        self.painStomach = TRUE;
        self.painTooth = TRUE;
        self.ratingForDoctor = arc4random() % 2;
    }
    return self;
}


- (BOOL) youOk {
    BOOL ok = arc4random() % 2;
    
    if (!ok) {
        [self.doctor doctorCheck:self];
        [self.doctor doctorCheck:self];
    }
    
    return ok;
}


- (void) takePill {
    NSLog(@"Pacient %@ take pill", self.name);
}


- (void) makeShot {
    NSLog(@"Pacient %@ make shot", self.name);
}

- (BOOL) nowYouOk {
    BOOL nowOk = [self youOk];
    if (nowOk == false) {
        [self.doctor doctorOtherCheck:self];
    }
    
    return nowOk;
}



//
/*
- (void) treatHands {
    self.painHands = TRUE;
    NSLog(@"Doctor %@ treat is hands", self.name);
}

- (void) treatLegs {
    self.painHands = TRUE;
    NSLog(@"Doctor %@ treat is legs", self.name);
}

- (void) treatHeart {
    self.painHands = TRUE;
    NSLog(@"Doctor %@ treat is heart", self.name);
}

- (void) treatSStomach {
    self.painHands = TRUE;
    NSLog(@"Doctor %@ treat is stomach", self.name);
}

- (void) treatTooth {
    self.painHands = TRUE;
    NSLog(@"Doctor %@ treat is tooth", self.name);
}
*/

- (void) treatsBody:(NSInteger) bodyNum {
    switch (bodyNum) {
        case 1:
            self.painHands = TRUE;
            NSLog(@"Doctor %@ treat is hands", self.name);
            self.ratingForDoctor = arc4random() % 2;
            break;
        case 2:
            self.painLegs = TRUE;
            NSLog(@"Doctor %@ treat is legs", self.name);
            self.ratingForDoctor = arc4random() % 2;
            break;
        case 3:
            self.painHeart = TRUE;
            NSLog(@"Doctor %@ treat is heart", self.name);
            self.ratingForDoctor = arc4random() % 2;
            break;
        case 4:
            self.painStomach = TRUE;
            NSLog(@"Doctor %@ treat is stomach", self.name);
            self.ratingForDoctor = arc4random() % 2;
            break;
        case 5:
            self.painTooth = TRUE;
            NSLog(@"Doctor %@ treat is tooth", self.name);
            self.ratingForDoctor = arc4random() % 2;
            break;
            
        default:
            NSLog(@"Unknown disease");
            break;
    }
}





- (NSMutableArray*) raport:(AKPatient*) patient {
    NSMutableArray* newList = [[NSMutableArray alloc] init];
    
    if (!patient.painHands) {
        [newList addObject: patient];
        return newList;
    }
        
    return newList;
    
}


- (void) doctorCheckBody:(AKPatient*) patient {
    
}



@end
