//
//  AKChild.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKHuman.h"
#import "AKJump.h"
#import "AKRun.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKChild : AKHuman <AKJump, AKRun>
#pragma mark -AKJump Protocol
//required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;


- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;


//optional
@property (strong, nonatomic) NSString* favoriteFood;
@property (strong, nonatomic) NSString* favoriteMovie;

- (NSString*) whatYouSeeOnTv;


#pragma mark -AKRun Protocol
//required
@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;

- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;

//optional
- (NSString*) sayHello;


@end

NS_ASSUME_NONNULL_END
