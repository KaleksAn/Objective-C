//
//  AKAnimal.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    Boy,
    Girl
} AKAnimalGender;

@interface AKAnimal : NSObject

#pragma mark -Propertys
@property (strong, nonatomic) NSString* kind;
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) AKAnimalGender gender;
@property (assign, nonatomic) NSInteger countLegs;

#pragma mark -Methods
- (void) takeFood;
- (void) lieDown;
- (void) walk;
- (void) printProperty;

@end

NS_ASSUME_NONNULL_END
