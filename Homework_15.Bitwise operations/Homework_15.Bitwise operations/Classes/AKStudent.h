//
//  AKStudent.h
//  Homework_15.Bitwise operations
//
//  Created by Aleksandr Kan on 22.09.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    
    AKMath          = 1 << 0,
    AKComputerSince = 1 << 1,
    AKArt           = 1 << 2,
    AKHistory       = 1 << 3,
    AKEngeeniring   = 1 << 4,
    AKAnatomy       = 1 << 5,
    AKPsychology    = 1 << 6,
    AKBiology       = 1 << 7
    
} AKStudentSubjectType;


@interface AKStudent : NSString

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) AKStudentSubjectType subjects;
@property (assign, nonatomic) NSInteger technical;
@property (assign, nonatomic) NSInteger humanitarian;

- (BOOL) technicalOrHumanitarian;
- (NSInteger) developerCount;
- (void) resetBiology;

@end

NS_ASSUME_NONNULL_END
