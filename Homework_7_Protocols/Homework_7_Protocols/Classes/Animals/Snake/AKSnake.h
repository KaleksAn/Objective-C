//
//  AKSnake.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKAnimal.h"
#import "AKSwim.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKSnake : AKAnimal <AKSwim>
#pragma mark -AKSwim Protocol
//Required
@property (assign, nonatomic) CGFloat maxDistance;
@property (assign, nonatomic) CGFloat timeSwim;

- (void) swimSlow;
- (void) swimFast;
- (void) dive;



@end

NS_ASSUME_NONNULL_END
