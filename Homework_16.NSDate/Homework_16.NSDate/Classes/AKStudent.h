//
//  AKStudent.h
//  Homework_16.NSDate
//
//  Created by Aleksandr Kan on 29.09.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKStudent : NSObject

@property (strong, nonatomic) NSDate* dateBirth;
@property (assign, nonatomic) NSInteger age;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* surname;


@end

NS_ASSUME_NONNULL_END
