//
//  AKDolphin.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKAnimal.h"
#import "AKJump.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKDolphin : AKAnimal <AKJump>

#pragma mark -AKJump Protocol
//Required
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;

- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;

@end

NS_ASSUME_NONNULL_END
