//
//  AppDelegate.m
//  Homework_16.NSDate
//
//  Created by Aleksandr Kan on 29.09.2021.
//

#import "AppDelegate.h"
#import "Classes/AKStudent.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSDate* startDate;
@property (strong, nonatomic) NSDate* finishDate;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    //Создание массива с объектами
    NSMutableArray* arrayStudents = [self setCountStudents:30];
    
    /*
    //Создание объектов и добавление в массив
//    for (int i = 0; i < 30; i++) {
//        AKStudent* student = [[AKStudent alloc] init];
//        [arrayStudents addObject:student];
//    }
*/
    
    
    //Сортировка массива
    [arrayStudents sortUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        AKStudent* student1 = (AKStudent*) obj1;
        AKStudent* student2 = (AKStudent*) obj2;
        
        if ([student1.dateBirth compare:student2.dateBirth] == NSOrderedAscending) {
            return NSOrderedDescending;
        } else if ([student1.dateBirth compare:student2.dateBirth] == NSOrderedDescending) {
            return NSOrderedAscending;
        } else {
            return NSOrderedAscending;
        }
        
    }];
    
    
    //Перебор массива и печать в консоль
    NSEnumerator* newEnumerator = [arrayStudents objectEnumerator];
    id student;
    
    NSInteger count = 0;
    while ((student = [newEnumerator nextObject]) != nil) {
        count += 1;
        NSLog(@"%ld. %@", count, student);
    }
    
    
    
    
    //MASTER LEVEL
    
    NSDateComponents* newCp = [[NSDateComponents alloc] init];
    newCp.day = 1;
    newCp.month = 1;
    newCp.year = 1970;
    NSCalendar* calendarNew = [NSCalendar currentCalendar];
    
    NSDateComponents* finishComponents = [[NSDateComponents alloc] init];
    finishComponents.day = 1;
    finishComponents.month = 1;
    finishComponents.year = 2005;
    
    
    self.startDate = [calendarNew dateFromComponents:newCp];
    self.finishDate = [NSDate date];
    

    [NSTimer scheduledTimerWithTimeInterval:0.002 target:self selector:@selector(timerForMaster:) userInfo:arrayStudents repeats:YES];
    //[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(printTest) userInfo:nil repeats:YES];
    
    NSLog(@"");
    NSLog(@"Different young and old students. Range: %@", [self rangeTime:arrayStudents]);
    
    //TEST FOR ENUMERATED
   
    
    [arrayStudents enumerateObjectsUsingBlock:^(AKStudent*  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        if (true) {
           // NSLog(@"NAME - %@", obj.name);
            *stop = YES;
        }
    }];
    
    
    //SUPERMAN LEVEL
    NSLog(@"LEVEL SUPERMAN");
    NSLog(@"#13");
    [self firstDayInMonth:self.startDate];
    [self sundayOnMonth:[NSDate date]];
   
    
    return YES;
}


- (NSMutableArray*) setCountStudents:(NSInteger) count {
    NSMutableArray* arrayStudents = [NSMutableArray array];
    
    for (int i = 0; i < count; i++) {
        AKStudent* student = [[AKStudent alloc] init];
        [arrayStudents addObject:student];
    }
    
    return arrayStudents;
}


//For MASTER

- (void) timerForMaster:(NSTimer*) timer {
    
    
        NSArray* arrayList = [timer userInfo];
        //NSDateComponents* components = [[NSDateComponents alloc] init];
        //NSCalendar* calendar = [NSCalendar currentCalendar];
        NSDateFormatter* newForm = [[NSDateFormatter alloc] init];
        [newForm setLocale:[NSLocale currentLocale]];
        [newForm setTimeZone:[NSTimeZone systemTimeZone]];
        [newForm setDateStyle:NSDateFormatterFullStyle];
        
        for (AKStudent* student in arrayList) {
            if ([[newForm stringFromDate:student.dateBirth] isEqualToString:[newForm stringFromDate:self.startDate]]) {
                NSLog(@"");
                NSLog(@"Happy Birthday %@ %@", student.name, student.surname);
                NSLog(@"Date Birthday %@", [newForm stringFromDate:student.dateBirth]);
            }
        }
        
        NSTimeInterval interval = 60 * 60 * 24;
        self.startDate = [self.startDate dateByAddingTimeInterval:interval];
        
        if ([self.startDate isEqualToDate:self.finishDate]) {
            [timer invalidate];
            //NSLog(@"TIMER Was STOPPED");
        }
        
    
    

    //NSLog(@"%@", [newForm stringFromDate:self.startDate]);
}

//Количество дней, месяцев и годов между самым молодым и взрослым студентами

- (NSString*) rangeTime:(NSArray*) listStudents {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    AKStudent* yongeStudent = (AKStudent*) [listStudents firstObject];
    AKStudent* oldStudent = (AKStudent*) [listStudents lastObject];
    NSDateComponents* components = [calendar components:NSCalendarUnitDay | NSCalendarUnitWeekOfYear | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:oldStudent.dateBirth toDate:yongeStudent.dateBirth options:0];
    
    NSString* result = [NSString stringWithFormat:@"Years - %ld, Months - %ld, Days - %ld, Weeks - %ld", components.year, components.month, components.day, components.weekOfYear];
    return result;
}


//#13 SUPERMAN
- (void) firstDayInMonth:(NSDate*) date {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitDay | NSCalendarUnitWeekday | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:date];
    NSInteger totalMonth = 12;
    NSDateFormatter* formatDate = [[NSDateFormatter alloc] init];
    [formatDate setDateFormat:@"yyyy/MM/d EEEE"];
    
    while (components.day < (components.day + 1)) {
        NSLog(@"First date in month - %@", [formatDate stringFromDate:[calendar dateFromComponents:components]]);
        components.month += 1;
    
        if (components.month > totalMonth) { break; }
    }
    
}



//#14 - Решение Романа Радецкого из группы в ВК.
- (void) sundayOnMonth:(NSDate*) date {
    NSCalendar* calendar = [NSCalendar currentCalendar];
    NSDateComponents* components = [calendar components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate:date];
    
    for (int i = 1; i <= 12; i++) {
        components.year = components.year;
        components.month = i;
        components.day = 1;
        
        NSDate* dateFirst = [calendar dateFromComponents:components];
        NSDateFormatter* formater = [NSDateFormatter new];
        [formater setDateFormat:@"yyyy/MMM/d"];
        
        NSInteger lengthMonth = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:dateFirst].length;
        
        for (int y = 1; y <= lengthMonth; y++) {
            [components setDay:y];
            dateFirst = [calendar dateFromComponents:components];
            NSDateComponents* componentsNew = [calendar components:NSCalendarUnitWeekday fromDate:dateFirst];
            
            if (componentsNew.weekday == 1) {
                NSLog(@"Sunday - %@", dateFirst);
            }
            
        }
        
    }
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
