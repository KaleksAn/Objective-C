//
//  AKFriend.h
//  Homework_06.Data Types
//
//  Created by Aleksandr Kan on 20.04.2021.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    AKDay,
    AKMoth,
    AKYear
    
} AKDateBith;

typedef enum {
    
    AKMan,
    AKWoman
} AKGender;

typedef enum{
    
    AKLeft,
    AKRight
    
} AKHands;

@interface AKFriend : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) AKGender gender;
@property (assign, nonatomic) AKHands hand;
@property (assign, nonatomic) AKDateBith dateBirth;


@end

NS_ASSUME_NONNULL_END
