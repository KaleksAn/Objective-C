//
//  AKPatient.h
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol AKPatientDelegate;

@interface AKPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (assign, nonatomic) BOOL painHeart;
@property (assign, nonatomic) BOOL painHands;
@property (assign, nonatomic) BOOL painLegs;
@property (assign, nonatomic) BOOL painStomach;
@property (assign, nonatomic) BOOL painTooth;
@property (assign, nonatomic) BOOL ratingForDoctor;
@property (weak, nonatomic) id <AKPatientDelegate> doctor;


- (BOOL) youOk;
- (BOOL) nowYouOk;
- (void) takePill;
- (void) makeShot;
//- (void) treatHands;
//- (void) treatLegs;
//- (void) treatHeart;
//- (void) treatSStomach;
//- (void) treatTooth;
- (NSArray*) raport:(AKPatient*) patient;
- (void) treatsBody:(NSInteger) bodyNum;

@end

@protocol AKPatientDelegate

typedef enum {
    
    AKLegs,
    AKHands,
    AKTooth,
    AKHeart,
    AKStomach
    
} AKBodyPart;


- (void) doctorCheck:(AKPatient*) patient;
- (void) doctorOtherCheck:(AKPatient*) patient;
- (void) patient:(AKPatient*) patient say:(NSString*) phrase;
- (void) doctorCheckBody:(AKPatient*) patient;


@end




NS_ASSUME_NONNULL_END
