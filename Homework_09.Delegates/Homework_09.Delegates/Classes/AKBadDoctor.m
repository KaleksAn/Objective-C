//
//  AKBadDoctor.m
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import "AKBadDoctor.h"

@implementation AKBadDoctor

#pragma mark - AKPatientDelegates


- (void) doctorCheck:(AKPatient*) patient {
    
    if (patient.painHands) {
        [self takeAspirin:patient];
    }
    
    if (patient.painHeart) {
        [self takeCoal:patient];
    }
    
    if (patient.painLegs) {
        [self runFast:patient];
    }
    
    if (patient.painStomach) {
        [self drinkSpirt:patient];
    }
    
    if (patient.painTooth) {
        [self drinkCold:patient];
    }
    
    [self checkTemperature:patient];
    
    
}

- (void) doctorOtherCheck:(AKPatient*) patient {
    BOOL smile = arc4random() % 2;
    NSLog(@"Patient %@ is %@", patient.name, smile ? @"Smile" : @"Cry");
    
}

- (void) patient:(AKPatient*) patient say:(NSString*) phrase {
    NSLog(@"Patient %@ say: %@", patient.name, phrase);
    
}

- (void) doctorCheckBody:(AKPatient*) patient {
    
}



#pragma mark - Bad Doctor Method's

- (void) takeAspirin:(AKPatient*) patient {
    NSLog(@"Patient %@ take aspirin", patient.name);
    patient.painHands = TRUE;
}

- (void) takeCoal:(AKPatient*) patient {
    NSLog(@"Patient %@ take coal", patient.name);
    patient.painHeart = TRUE;
}

- (void) runFast:(AKPatient*) patient {
    NSLog(@"Patient %@ run very fast", patient.name);
    patient.painLegs = TRUE;
}

- (void) drinkSpirt:(AKPatient*) patient {
    NSLog(@"Patient %@ drink spirt", patient.name);
    patient.painStomach = TRUE;
}

- (void) drinkCold:(AKPatient*) patient {
    NSLog(@"Patient %@ cold drink", patient.name);
    patient.painTooth = TRUE;
}


- (void) checkTemperature:(AKPatient*) patient {
    if (patient.temperature >= 37.0f && patient.temperature < 39.0f) {
        NSLog(@"Patient %@ drink spirt", patient.name);
        NSLog(@"Patient %@ have temperature %f", patient.name, patient.temperature);
    } else if (patient.temperature >= 39.0f) {
        NSLog(@"Patient %@ OK!", patient.name);
        NSLog(@"Patient %@ have temperature %f", patient.name, patient.temperature);
    } else if (patient.temperature >= 36.6f && patient.temperature < 37.0f) {
        NSLog(@"Patient %@ tu jump", patient.name);
        NSLog(@"Patient %@ have temperature %f", patient.name, patient.temperature);
    }
    
}





@end
