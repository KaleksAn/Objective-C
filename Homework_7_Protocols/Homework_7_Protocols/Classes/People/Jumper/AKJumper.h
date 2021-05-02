//
//  AKJumper.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKHuman.h"
#import "AKJump.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKJumper : AKHuman <AKJump>

#pragma mark -AKJump Protocol
//Required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;

- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;


//Optional
@property (strong, nonatomic) NSString* favoriteFood;
@property (strong, nonatomic) NSString* favoriteMovie;

- (void) goToMarket;
- (void) watchTv;
- (NSString*) whatYouSeeOnTv;

@end

NS_ASSUME_NONNULL_END
