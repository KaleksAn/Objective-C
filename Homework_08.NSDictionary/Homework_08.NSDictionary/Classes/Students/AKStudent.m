//
//  AKStudent.m
//  Homework_08.NSDictionary
//
//  Created by Aleksandr Kan on 03.05.2021.
//

#import "AKStudent.h"

@implementation AKStudent

- (NSString*) key {
    
    return [NSString stringWithFormat:@"%@ %@", self.surname, self.name];
}

- (id) initStudentFirst:(NSString*) name andSecond:(NSString*) surname andAge:(NSInteger) number andPrase:(NSString*) text {
    
//    if (self = [super init]) {
//        _name = name;
//        _surname = surname;
//        _age = number;
//        _phrase = text;
//    }
    self = [super init];
    if (self) {
        _name = name;
        _surname = surname;
        _age = number;
        _phrase = text;

    }
    
    return self;
}


//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        <#statements#>
//    }
//    return self;
//}


@end
