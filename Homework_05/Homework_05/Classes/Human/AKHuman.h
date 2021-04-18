//
//  AKHuman.h
//  Homework_05
//
//  Created by Aleksandr Kan on 16.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKHuman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) CGFloat heightForHuman;
@property (assign, nonatomic) CGFloat weight;
@property (strong, nonatomic) NSString* gender;


- (void) move;

@end

NS_ASSUME_NONNULL_END
