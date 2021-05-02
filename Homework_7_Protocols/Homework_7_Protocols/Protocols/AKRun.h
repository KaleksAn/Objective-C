//
//  AKRun.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import <Foundation/Foundation.h>

typedef enum {
    Ufc,
    Soccer,
    Bow,
    Basketball,
    Race
} Sport;

typedef enum {
    Samsung,
    Apple,
    Xiaomi
} PhoneBrends;

NS_ASSUME_NONNULL_BEGIN

@protocol AKRun

@required

@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;


- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;


@optional

@property (assign, nonatomic) NSInteger countWin;
@property (assign, nonatomic) Sport favoriteSport;
@property (assign, nonatomic) PhoneBrends phoneBrend;


- (NSString*) sayHello;
- (NSString*) howAreYou;
- (void) callFriend;
- (void) driveCar;
- (void) hunt;
- (void) relax;


@end

NS_ASSUME_NONNULL_END
