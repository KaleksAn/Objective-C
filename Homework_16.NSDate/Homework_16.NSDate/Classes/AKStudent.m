//
//  AKStudent.m
//  Homework_16.NSDate
//
//  Created by Aleksandr Kan on 29.09.2021.
//

#import "AKStudent.h"

@implementation AKStudent
	
- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSDate* nowDate = [NSDate date];
        NSCalendar* calendar = [NSCalendar currentCalendar];
        NSDateComponents* yearComponent = [calendar components:NSCalendarUnitYear fromDate:nowDate];
        NSDateComponents* component = [[NSDateComponents alloc] init];
        
        component.day = arc4random() % 32;
        component.month = arc4random() % 13;
        component.year = yearComponent.year - (arc4random() % 35 + 16);
        
        self.dateBirth = [calendar dateFromComponents:component];
        self.age = [calendar component:NSCalendarUnitYear fromDate:nowDate] - component.year;
        
        //Arrays with name's and surname's
        NSArray* listName = [NSArray arrayWithObjects: @"Alex", @"Jack", @"Frank", @"Dima", @"Rick",
                                                      @"Anna", @"Victoria", @"Tatyana", @"Violetta", @"Sabrina",
                                                      nil];
        
        NSArray* listSurname = [NSArray arrayWithObjects: @"Kim", @"Rodrigez", @"Gonzalez", @"Vakulenko", @"Black",
                                                      @"Ten", @"Pak", @"An", @"Ogay", @"Tegay",
                                                      nil];
        
        NSInteger randomNameIndex = arc4random() % [listName count];
        NSInteger randomSurnameIndex = arc4random() % [listSurname count];
        self.name = [listName objectAtIndex: randomNameIndex];
        self.surname = [listSurname objectAtIndex: randomSurnameIndex];
        
    }
    return self;
}



- (NSString*) description {
    
    NSDateFormatter* formatDate = [[NSDateFormatter alloc] init];
    [formatDate setDateStyle: NSDateFormatterLongStyle];

    NSString* string = [NSString stringWithFormat:@"Student %@ %@. Was born: %@. AGE - %ld",
                        self.name, self.surname, [formatDate stringFromDate:self.dateBirth], self.age];
    
    return string;
}

@end
