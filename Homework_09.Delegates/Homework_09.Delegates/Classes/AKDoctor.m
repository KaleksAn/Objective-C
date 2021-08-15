//
//  AKDoctor.m
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import "AKDoctor.h"

@interface AKDoctor ()
//NSMutableString* listHead = @"";


@end


@implementation AKDoctor
 
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.myReport = [[NSMutableDictionary alloc] init];
        self.expYears  = 0;
        self.name = @"Doctor";
        self.keysArray = [[NSMutableArray alloc] init];
    }
    return self;
}


#pragma mark -AKPatientDelegate

- (void) doctorCheck:(AKPatient*) patient {
    
    if (patient.temperature >= 37.0f && patient.temperature < 39.0f) {
        [patient takePill];
    } else if (patient.temperature >= 39.0f) {
        [patient makeShot];
    } else if (patient.temperature >= 36.6f && patient.temperature < 37.0f) {
        NSLog(@"Patient %@ to rest", patient.name);
    }
    
}

- (void) doctorOtherCheck:(AKPatient*) patient {
    AKBodyPart hands = AKHands;
    AKBodyPart legs = AKLegs;
    AKBodyPart heart = AKHeart;
    AKBodyPart stomach = AKStomach;
    AKBodyPart tooth = AKTooth;
    
    if (!patient.painHands) {
        [patient treatsBody:hands];
        NSLog(@"Doctor %@ treat hands for patient %@", self.name, patient.name);
        NSMutableString* list = [[NSMutableString alloc] initWithString: patient.name];
        NSLog(@"Hands list: %@", list);
    }
    
    if (!patient.painLegs) {
        [patient treatsBody:legs];
        NSLog(@"Doctor %@ treat legs for patient %@", self.name, patient.name);
    }
    
    if (!patient.painHeart) {
        [patient treatsBody:heart];
        NSLog(@"Doctor %@ treat heart for patient %@", self.name, patient.name);
    }
    
    if (!patient.painStomach) {
        [patient treatsBody:stomach];
        NSLog(@"Doctor %@ treat is stomach", self.name);
    }
    
    if (!patient.painTooth) {
        [patient treatsBody:tooth];
        NSLog(@"Doctor %@ treat tooth for patient %@", self.name, patient.name);
    }
    
}


- (void) patient:(AKPatient*) patient say:(NSString*) phrase {
    NSLog(@"Patient %@ say: %@", patient.name, phrase);
}

- (void)doctorCheckBody:(AKPatient *) patient {
    AKBodyPart body = arc4random() % 5;
    NSNumber* number = [[NSNumber alloc] init];
    
    switch (body) {
        case AKHeart:
            number = [NSNumber numberWithLongLong:body];
            [self.myReport setObject:[self inBody:number] forKey:patient.name];
            NSLog(@"Patient %@ have pain on HEART", patient.name);
            break;
        case AKHands:
            number = [NSNumber numberWithInt:body];
            [self.myReport setObject:[self inBody:number] forKey:patient.name];
            NSLog(@"Patient %@ have pain on HANDS", patient.name);
            break;
        case AKTooth:
            number = [NSNumber numberWithInt:body];
            [self.myReport setObject:[self inBody:number] forKey:patient.name];
            NSLog(@"Patient %@ have pain on TOOTH", patient.name);
            break;
        case AKStomach:
            number = [NSNumber numberWithInt:body];
            [self.myReport setObject:[self inBody:number] forKey:patient.name];
            NSLog(@"Patient %@ have pain on STOMACHE", patient.name);
            break;
        case AKLegs:
            number = [NSNumber numberWithInt:body];
            [self.myReport setObject:[self inBody:number] forKey:patient.name];
            NSLog(@"Patient %@ have pain on HLEGS", patient.name);
            break;
        default:
            NSLog(@"Patient %@ don't have pain", patient.name);
            break;
    }
}


#pragma mark - Doctor method's
- (NSMutableArray*) sortKeys {
    NSMutableArray* arraySorted = [[NSMutableArray alloc] init];
    for (id key in [self.myReport allKeys]) {
        [arraySorted addObject:key];
    }
    
    [arraySorted sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    return arraySorted;
}


- (void) printRaport {
    //NSArray
   // NSArray* keys = [NSArray arrayWithObjects:[self sortKeys], nil];
    
    for (id key in [self sortKeys]) {
        NSLog(@"Patient: %@ have problem with %@", key, [self.myReport objectForKey: key]);
        
    }
}


- (NSString*) inBody:(NSNumber*) number {
    int num = [number intValue];
    switch (num) {
        case AKLegs:
            return @"LEGS";
        case AKHands:
            return @"Hands";
        case AKHeart:
            return @"HEART";
        case AKTooth:
            return @"Tooth";
        case AKStomach:
            return @"Stomache";
        default:
            return @"";
    }
    
}



@end
