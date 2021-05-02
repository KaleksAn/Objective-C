//
//  AKActor.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKHuman.h"
#import "AKJump.h"
#import "AKRun.h"
#import "AKSwim.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKActor : AKHuman <AKRun, AKJump, AKSwim>

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
@property (assign, nonatomic) Sport favoriteSport;

- (NSString*) sayHello;
- (NSString*) howAreYou;
- (void) callFriend;
- (void) driveCar;
- (void) relax;


#pragma mark -AKJump Protocol
//Required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;

- (void) jumpToUp;
- (void) jumpOver;
- (void) jumpToLength;

//Optional
@property (strong, nonatomic) NSString* favoriteMovie;

- (NSString*) whatYouSeeOnTv;
- (void) goToMarket;
- (void) watchTv;


#pragma mark -AKSwim
//Required
@property (assign, nonatomic) CGFloat maxDistance;
@property (assign, nonatomic) CGFloat timeSwim;

- (void) swimSlow;
- (void) swimFast;
- (void) dive;


@end

NS_ASSUME_NONNULL_END
