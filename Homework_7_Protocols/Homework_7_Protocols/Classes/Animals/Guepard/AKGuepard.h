//
//  AKGuepard.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKAnimal.h"
#import "AKRun.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKGuepard : AKAnimal <AKRun>

#pragma mark -AKRun Protocol
//Required
@property (assign, nonatomic) CGFloat midleSpeed;
@property (assign, nonatomic) CGFloat maxSpeed;
@property (assign, nonatomic) CGFloat maxDistanceForRun;

- (void) slowRun;
- (void) fastRun;
- (void) overBlockRun;

//Optional
- (void) hunt;


@end

NS_ASSUME_NONNULL_END
