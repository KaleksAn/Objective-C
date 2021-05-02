//
//  AKCycler.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKHuman.h"
#import "AKRun.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKCycler : AKHuman <AKRun>

#pragma mark -AKRun Protocol
//Required
@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;

- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;

//Optional
@property (assign, nonatomic) NSInteger countWin;
@property (assign, nonatomic) Sport favoriteSport;

- (NSString*) sayHello;
- (NSString*) howAreYou;

@end

NS_ASSUME_NONNULL_END
