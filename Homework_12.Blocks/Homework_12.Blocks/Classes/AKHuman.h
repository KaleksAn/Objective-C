//
//  AKHuman.h
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 28.08.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) float temperature;

//- (void) checkOk:(void(^)(void)) block;
- (instancetype)initWithBlock:(void(^)(AKHuman*)) block;
- (void) takePill;
- (void) makeShot;
@end

NS_ASSUME_NONNULL_END
