//
//  AKDog.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKAnimal.h"
#import "AKRun.h"
#import "AKJump.h"
#import "AKSwim.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKDog : AKAnimal <AKRun, AKJump, AKSwim>

#pragma mark -AKRun Protocol
//Required
@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;
 
- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;

#pragma mark AKJump Protocol
//Required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;


- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;

#pragma mark -AKSwim Protocol
//Required
@property (assign, nonatomic) CGFloat maxDistance;
@property (assign, nonatomic) CGFloat timeSwim;

- (void) swimSlow;
- (void) swimFast;
- (void) dive;

@end

NS_ASSUME_NONNULL_END
