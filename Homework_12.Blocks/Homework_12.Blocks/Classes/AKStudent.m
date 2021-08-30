//
//  AKStudent.m
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 28.08.2021.
//

#import "AKStudent.h"

@implementation AKStudent

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"Default";
        _surname = @"Default";
    }
    return self;
}



//- (NSComparisonResult)compare:(AKStudent*)otherObject {
//    return [self.name compare:otherObject.name];
//}


@end
