//
//  AKHuman.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef enum {
    KoreaRepublic,
    Russia,
    Usa,
    Kazahstan,
    Brazil
} AKCitizenship;

typedef enum {
    Man,
    Woman,
} AKGender;



NS_ASSUME_NONNULL_BEGIN
@interface AKHuman : NSObject 

#pragma mark -Propertys
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* surname;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) AKGender gender;
@property (assign, nonatomic) AKCitizenship citizen;


#pragma mark -Methods
- (void) askMe:(NSString*) ask1;
- (void) controlCar;
- (void) walkToWork;
- (void) study;
- (void) saySomethig:(NSString*) phrase;
- (void) printProperty;

@end

NS_ASSUME_NONNULL_END
