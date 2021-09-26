//
//  AKStudent.m
//  Homework_15.Bitwise operations
//
//  Created by Aleksandr Kan on 22.09.2021.
//

#import "AKStudent.h"

@interface AKStudent ()


//NSInteger technical = AKMath | AKEngeeniring | AKComputerSince;
//NSInteger humanitarian = AKArt | AKBiology | AKAnatomy | AKHistory | AKPsychology;

@end

@implementation AKStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.name = @"Default";
        self.subjects = 0;
        self.technical = 0;
        self.humanitarian = 0;
    }
    return self;
}

- (BOOL) technicalOrHumanitarian {
    
    if (self.technical == self.subjects) {
        return YES;
    } else {
        return NO;
    }
    
    //return self.subjects == self.technical ? YES : NO;
}


- (NSString*) scanType: (AKStudentSubjectType) type {
    
    NSString* answer = self.subjects & type ? @"YES" : @"NO";
    
    return answer;
}


- (void) countLessons {
    if (self.subjects & AKMath) { self.technical += 1; }
    if (self.subjects & AKComputerSince) { self.technical += 1; }
    if (self.subjects & AKEngeeniring) { self.technical += 1; }
    if (self.subjects & AKArt) { self.humanitarian += 1; }
    if (self.subjects & AKHistory) { self.humanitarian += 1; }
    if (self.subjects & AKPsychology) { self.humanitarian += 1; }
    if (self.subjects & AKBiology) { self.humanitarian += 1; }
    if (self.subjects & AKAnatomy) { self.humanitarian += 1; }
}




- (NSString *) description {
    [self countLessons];
    
    NSString* listSubjects = [NSString stringWithFormat: @"Math = %@,\n"
                                                    "Computer since = %@,\n"
                                                    "Art = %@,\n"
                                                    "History = %@,\n"
                                                    "Engeeniring = %@,\n"
                                                    "Anatomy = %@,\n"
                                                    "Psychology = %@,\n"
                                                    "Biology = %@,\n",
                                                    [self scanType: AKMath],
                                                    [self scanType: AKComputerSince],
                                                    [self scanType: AKArt],
                                                    [self scanType: AKHistory],
                                                    [self scanType: AKEngeeniring],
                                                    [self scanType: AKAnatomy],
                                                    [self scanType: AKPsychology],
                                                    [self scanType: AKBiology]];
    
    return  listSubjects;
}


- (NSInteger) developerCount {
    
    return self.subjects & AKComputerSince ? 1 : 0;
}

- (void) resetBiology {
    self.subjects &= ~(AKBiology);
    NSLog(@"Student %@. Subject Biology is reset to 0", self.name);
    NSLog(@"Biology %@", [self scanType: AKBiology]);
}



@end
