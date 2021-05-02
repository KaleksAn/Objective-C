//
//  AKJump.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AKJump 

@required
#pragma mark -Propertys
@property (assign, nonatomic) CGFloat maxJumpSize;
@property (assign, nonatomic) CGFloat maxLengthJump;


#pragma mark -Methods

- (void) jumpToUp;
- (void) jumpToLength;
- (void) jumpOver;



@optional
#pragma mark -Property
@property (strong, nonatomic) NSString* favoriteFood;
@property (strong, nonatomic) NSString* favoriteMovie;

#pragma mark -Methods
- (void) goToMarket;
- (void) watchTv;
- (NSString*) whatYouSeeOnTv;

@end

NS_ASSUME_NONNULL_END
