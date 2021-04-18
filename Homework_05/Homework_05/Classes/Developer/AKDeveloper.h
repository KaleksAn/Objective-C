//
//  AKDeveloper.h
//  Homework_05
//
//  Created by Aleksandr Kan on 18.04.2021.
//

#import "AKHuman.h"

NS_ASSUME_NONNULL_BEGIN

@interface AKDeveloper : AKHuman

@property (strong, nonatomic) NSString* proffession;
@property (strong, nonatomic) NSString* languageForProgramming;
@property (assign, nonatomic) CGFloat rating;


@end

NS_ASSUME_NONNULL_END
