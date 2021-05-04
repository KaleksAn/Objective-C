//
//  AKStudent.h
//  Homework_08.NSDictionary
//
//  Created by Aleksandr Kan on 03.05.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKStudent : NSObject

@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* surname;
@property (strong, nonatomic) NSString* phrase;
@property (assign, nonatomic) NSInteger age;

- (id) initStudentFirst:(NSString*) name andSecond:(NSString*) surname andAge:(NSInteger) number andPrase:(NSString*) text;
- (NSString*) key;

@end

NS_ASSUME_NONNULL_END
