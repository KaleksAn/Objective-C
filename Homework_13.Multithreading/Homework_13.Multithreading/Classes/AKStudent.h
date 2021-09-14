//
//  AKStudent.h
//  Homework_13.Multithreading
//
//  Created by Aleksandr Kan on 05.09.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKStudent : NSObject

@property (strong, nonatomic) NSString* name;

- (void) numberAnswer:(NSInteger) number rangeForFind:(UInt32) range enterBlock:(void (^)(NSInteger, NSString*, float)) block;
- (void) answer:(NSInteger) number andRange:(NSInteger) range;

@end

NS_ASSUME_NONNULL_END
