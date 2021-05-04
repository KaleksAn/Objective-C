//
//  AppDelegate.m
//  Homework_08.NSDictionary
//
//  Created by Aleksandr Kan on 03.05.2021.
//

#import "AppDelegate.h"
#import "Classes/Students/AKStudent.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - Inicialization Objects
    
//Task 1 - 2
    AKStudent* student_1 = [[AKStudent alloc] init];
    student_1.name = @"Denis";
    student_1.surname = @"Markov";
    student_1.age = 17;
    student_1.phrase = @"Hello World!";
    
    AKStudent* student_2 = [[AKStudent alloc] init];
    student_2.name = @"Dmitriy";
    student_2.surname = @"Kim";
    student_2.age = 27;
    student_2.phrase = @"Hi all!";
    
    AKStudent* student_3 = [[AKStudent alloc] init];
    student_3.name = @"Kristina";
    student_3.surname = @"Denisenko";
    student_3.age = 21;
    student_3.phrase = @"Hello!";
    
    AKStudent* student_4 = [[AKStudent alloc] init];
    student_4.name = @"Viktoria";
    student_4.surname = @"Tsoy";
    student_4.age = 28;
    student_4.phrase = @"WELCOME!";
    
    AKStudent* student_5 = [[AKStudent alloc] init];
    student_5.name = @"Igor";
    student_5.surname = @"Kim";
    student_5.age = 30;
    student_5.phrase = @"Hello my friends";
    
    AKStudent* student_6 = [[AKStudent alloc] init];
    student_6.name = @"Petr";
    student_6.surname = @"Nesterov";
    student_6.age = 22;
    student_6.phrase = @"Hola!";
    
    AKStudent* student_7 = [[AKStudent alloc] init];
    student_7.name = @"Irina";
    student_7.surname = @"Kim";
    student_7.age = 18;
    student_7.phrase = @"Privet mir!";
    
    AKStudent* student_8 = [[AKStudent alloc] init];
    student_8.name = @"Sergey";
    student_8.surname = @"Harchenko";
    student_8.age = 34;
    student_8.phrase = @"Think different";
    
    AKStudent* student_9 = [[AKStudent alloc] init];
    student_9.name = @"Alina";
    student_9.surname = @"Nogay";
    student_9.age = 27;
    student_9.phrase = @"Good morning";
    
    AKStudent* student_10 = [[AKStudent alloc] init];
    student_10.name = @"Roman";
    student_10.surname = @"Lomov";
    student_10.age = 18;
    student_10.phrase = @"Hi guys!";
    
    AKStudent* student_11 = [[AKStudent alloc] init];
    student_11.name = @"Andrey";
    student_11.surname = @"Tokarev";
    student_11.age = 19;
    student_11.phrase = @"안녕하세요";
    
    AKStudent* student_12 = [[AKStudent alloc] init];
    student_12.name = @"Karina";
    student_12.surname = @"Fedotova";
    student_12.age = 22;
    student_12.phrase = @"Всем большой ПРИВЕТ!";
    
    AKStudent* student_13 = [[AKStudent alloc] init];
    student_13.name = @"Ekaterina";
    student_13.surname = @"Romanova";
    student_13.age = 16;
    student_13.phrase = @"МИР, ТРУД, МАЙ!";
    
    AKStudent* student_14 = [[AKStudent alloc] init];
    student_14.name = @"Victor";
    student_14.surname = @"Tsoy";
    student_14.age = 25;
    student_14.phrase = @"За дружбу всех народов! Азии и Африки!";
    
    AKStudent* student_15 = [[AKStudent alloc] init];
    student_15.name = @"Aleksander";
    student_15.surname = @"Gromov";
    student_15.age = 21;
    student_15.phrase = @"Добро пожаловать!";
    
    //Пример создания объекта и инициализация его свойств
    AKStudent* student_16 = [[AKStudent alloc] initStudentFirst:@"Petya" andSecond:@"Petrov" andAge:22 andPrase:@"I am developer"];
    NSLog(@" Sample %@ %@ %ld %@", student_16.name, student_16.surname, student_16.age, student_16.phrase);
    
    
/*
    NSString* key1 = [NSString stringWithFormat:@"%@ %@", student_1.surname, student_1.name];
    NSString* key2 = [NSString stringWithFormat:@"%@ %@", student_2.surname, student_2.name];
    NSString* key3 = [NSString stringWithFormat:@"%@ %@", student_3.surname, student_3.name];
    NSString* key4 = [NSString stringWithFormat:@"%@ %@", student_4.surname, student_4.name];
    NSString* key5 = [NSString stringWithFormat:@"%@ %@", student_5.surname, student_5.name];
    NSString* key6 = [NSString stringWithFormat:@"%@ %@", student_6.surname, student_6.name];
    NSString* key7 = [NSString stringWithFormat:@"%@ %@", student_7.surname, student_7.name];
    NSString* key8 = [NSString stringWithFormat:@"%@ %@", student_8.surname, student_8.name];
    NSString* key9 = [NSString stringWithFormat:@"%@ %@", student_9.surname, student_9.name];
    NSString* key10 = [NSString stringWithFormat:@"%@ %@", student_10.surname, student_10.name];
    NSString* key11 = [NSString stringWithFormat:@"%@ %@", student_11.surname, student_11.name];
    NSString* key12 = [NSString stringWithFormat:@"%@ %@", student_12.surname, student_12.name];
    NSString* key13 = [NSString stringWithFormat:@"%@ %@", student_13.surname, student_13.name];
    NSString* key14 = [NSString stringWithFormat:@"%@ %@", student_14.surname, student_14.name];
    NSString* key15 = [NSString stringWithFormat:@"%@ %@", student_15.surname, student_15.name];
*/
 //Task 3 - 4
    /*
    NSDictionary* studentsJournal = [NSDictionary dictionaryWithObjectsAndKeys:
                                    student_1, key],
                                    student_2, key2,
                                    student_3, key3,
                                    student_4, key4,
                                    student_5, key5,
                                    student_6, key6,
                                    student_7, key7,
                                    student_8, key8,
                                    student_9, key9,
                                    student_10, key10,
                                    student_11, key11,
                                    student_12, key12,
                                    student_13, key13,
                                    student_14, key14,
                                    student_15, key15,
                                     nil];
     */
    
    NSDictionary* studentsJournal = [NSDictionary dictionaryWithObjectsAndKeys:
                                    student_1, [student_1 key],
                                    student_2, [student_2 key],
                                    student_3, [student_3 key],
                                    student_4, [student_4 key],
                                    student_5, [student_5 key],
                                    student_6, [student_6 key],
                                    student_7, [student_7 key],
                                    student_8, [student_8 key],
                                    student_9, [student_9 key],
                                    student_10, [student_10 key],
                                    student_11, [student_11 key],
                                    student_12, [student_12 key],
                                    student_13, [student_13 key],
                                    student_14, [student_14 key],
                                    student_15, [student_15 key],
                                    nil];
   
    NSInteger count = 0;
    
    for (id key in [studentsJournal allKeys]) {
        count++;
        AKStudent* student = [studentsJournal objectForKey:key];
        
        NSLog(@"%ld.Full name: %@ %@", count, student.surname, student.name);
        NSLog(@"Phrase: %@", student.phrase);
        
    }
    
 //Task 5
    NSLog(@"\nTask 5");
    count = 0;
    NSArray* arrayKeys = [[studentsJournal allKeys] sortedArrayUsingSelector:@selector(compare:)];
    
    for (id key in arrayKeys) {
        count++;
        AKStudent* student = [studentsJournal objectForKey:key];
        NSLog(@"%ld.Student name: %@ %@", count, student.surname, student.name);
        NSLog(@"Phrase: %@", student.phrase);
        NSLog(@"");
    }
   
    
//Blocks sorted
    NSArray* keysArray = [[studentsJournal allKeys] sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        return [obj1 compare:obj2];
    }];
    
    for (NSString* key in keysArray) {
        AKStudent* student = [studentsJournal objectForKey:key];
        NSLog(@"Name student: %@ %@", student.surname, student.name);
    }
    
    return YES;
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
