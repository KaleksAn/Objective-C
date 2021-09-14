//
//  AKBestStudent.h
//  Homework_13.Multithreading
//
//  Created by Aleksandr Kan on 09.09.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKBestStudent : NSObject

@property (strong, nonatomic) NSString* name;


- (void) numberAnswer:(NSInteger) number rangeForFind:(UInt32) range enterBlock:(void (^)(NSInteger, NSString*, float)) block;

@end

NS_ASSUME_NONNULL_END
