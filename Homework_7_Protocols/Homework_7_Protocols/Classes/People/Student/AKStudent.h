//
//  AKStudent.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKHuman.h"
#import "AKRun.h"
#import "AKJump.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKStudent : AKHuman <AKJump, AKRun>

#pragma mark -AKJump Protocol
//Required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;

- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;

//Optional
@property (strong, nonatomic) NSString* favoriteFood;

- (void) goToMarket;
- (void) watchTv;


#pragma mark -AKRun Protocol
//Required
@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;

- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;


//Optional
@property (assign, nonatomic) PhoneBrends phoneBrend;

- (void) callFriend;
- (void) driveCar;
- (NSString*) sayHello;
- (NSString*) howAreYou;



@end

NS_ASSUME_NONNULL_END
