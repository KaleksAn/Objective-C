//
//  AppDelegate.m
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 26.08.2021.
//

#import "AppDelegate.h"
#import "Classes/AKStudent.h"
#import "Classes/AKPatient.h"
#import "Classes/AKHuman.h"

//Task 3
typedef void (^NewTypeBlock1)(void);
typedef void (^NewTypeBlock2)(NSInteger num1, NSInteger num2, NSString* str);
typedef NSString* (^NewTypeBlock3)(NSString* str1, NSInteger intValue, NSString* str2);

@interface AppDelegate ()

@property (strong, nonatomic) NSArray* arrayPatient;
@property (strong, nonatomic) NSArray* arrayHuman;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Easy level
    //Task 1
    void (^firstBlock)(void) = ^{
        NSLog(@"This is my first block from homework.");
    };
    
    firstBlock();
    
    //Task 2
    void (^secondBlock)(NSString*) = ^(NSString* string){
        NSLog(@"Call second block. String: %@", string);
    };
    
    void (^secondBlockTest2)(NSString*, NSInteger, NSString*) = ^(NSString* str1, NSInteger intValue, NSString* str2){
        NSLog(@"Second block test 2. Info: %@, %@, %ld", str1, str2, intValue);
    };
    
    secondBlock(@"HELLO BLOCK!");
    secondBlockTest2(@"Hi", 12, @"iOS Developer lesson");
    
    
    //Task 4
    //Call methods with blocks
    
    [self methodForBlock1:^{
        NSLog(@"Call method for block 1 parametr");
    }];
    
    [self methodForBlock2:^(NSInteger num1, NSInteger num2, NSString *str) {
        NSLog(@"Call method for block 2 parametr and other parameters");
        NSLog(@"num 1: %ld num 2: %ld string: %@", num1, num2, str);
    } num:23 num:45 str2:@"Yepp"];
    
    [self methodForBlock3:^NSString *(NSString *str1, NSInteger intValue, NSString *str2) {
        NSInteger result = 2 * intValue;
        NSLog(@"Call method for block 3 parametr and other parameters");
        NSLog(@"String 1 have text: %@", str1);
        NSLog(@"String 1 have text: %@", str2);
        NSLog(@"Integer parametr: %ld", intValue);
        NSLog(@"2 * %ld = %ld", intValue, result);
        return str1;
    } strFirst:@"I will be iOS developer!" num:6 str2:@"Thank you Alex Skutarenko!:)"];
    
    //Finish block and send to method
    NewTypeBlock1 testBlock = ^{
        NSLog(@"iOS Dev Course!:)");
        NSLog(@"iOS 14.0");
    };
    
    [self methodForBlock1:testBlock];
    [self methodForBlock1:^{
        NSLog(@"Have nace day!:)");
    }];
    
    
    //Student level
    AKStudent* student_1 = [[AKStudent alloc] init];
    student_1.name = @"Jack";
    student_1.surname = @"Black";
    
    AKStudent* student_2 = [[AKStudent alloc] init];
    student_2.name = @"Dmitriy";
    student_2.surname = @"Pak";
    
    AKStudent* student_3 = [[AKStudent alloc] init];
    student_3.name = @"Antony";
    student_3.surname = @"Johnson";
    
    AKStudent* student_4 = [[AKStudent alloc] init];
    student_4.name = @"Sergey";
    student_4.surname = @"Tegay";
    
    AKStudent* student_5 = [[AKStudent alloc] init];
    student_5.name = @"Dmitriy";
    student_5.surname = @"Kim";
    
    AKStudent* student_6 = [[AKStudent alloc] init];
    student_6.name = @"Gennadiy";
    student_6.surname = @"Golovkin";
    
    AKStudent* student_7 = [[AKStudent alloc] init];
    student_7.name = @"Vladimir";
    student_7.surname = @"Li";
    
    AKStudent* student_8 = [[AKStudent alloc] init];
    student_8.name = @"Vladimir";
    student_8.surname = @"Ten";
    
    AKStudent* student_9 = [[AKStudent alloc] init];
    student_9.name = @"Igor";
    student_9.surname = @"Kim";
    
    AKStudent* student_10 = [[AKStudent alloc] init];
    student_10.name = @"Victor";
    student_10.surname = @"Lim";
    
    AKStudent* student_11 = [[AKStudent alloc] init];
    student_11.name = @"Zak";
    student_11.surname = @"Lim";
    
    AKStudent* student_12 = [[AKStudent alloc] init];
    student_12.name = @"Aztonyyyyyyyy";
    student_12.surname = @"Kum";
    
    NSMutableArray* students = [NSMutableArray arrayWithObjects:student_1,
                                student_2,
                                student_3,
                                student_4,
                                student_5,
                                student_6,
                                student_7,
                                student_8,
                                student_9,
                                student_10,
                                student_11,
                                student_12,
                                nil];
    
    NSLog(@"STUDENT LIST 1:");
    for (id student in students) {
        AKStudent* person = (AKStudent*) student;
        NSLog(@"Student: %@ %@", person.name, person.surname);
    }
    
    
    NSArray* newList = [students sortedArrayUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        AKStudent* person_1 = (AKStudent*) obj1;
        AKStudent* person_2 = (AKStudent*) obj2;
    
        if (person_1.name < person_2.name) {
            return [person_1.name compare:person_2.name];
        } else {
            return  [person_1.surname compare:person_2.surname];;
        }
    }];
    

    NSLog(@"STUDENT LIST 2:");
    for (id student in newList) {
        AKStudent* person = (AKStudent*) student;
        NSLog(@"Student: %@ %@", person.name, person.surname);
    }
    
    
    //Master level
    NSLog(@"LEVEL MASTER!");
    
    AKPatient* patient_1 = [[AKPatient alloc] init];
    patient_1.name = @"Dima";
    patient_1.temperature = 37.f;
    
    AKPatient* patient_2 = [[AKPatient alloc] init];
    patient_2.name = @"Sasha";
    patient_2.temperature = 36.f;
    
    AKPatient* patient_3 = [[AKPatient alloc] init];
    patient_3.name = @"Igor";
    patient_3.temperature = 38.6f;
    
    AKPatient* patient_4 = [[AKPatient alloc] init];
    patient_4.name = @"Vlad";
    patient_4.temperature = 37.5f;
    
    AKPatient* patient_5 = [[AKPatient alloc] init];
    patient_5.name = @"Vova";
    patient_5.temperature = 36.9f;
    
    NSArray* patientList = [NSArray arrayWithObjects:patient_1,
                            patient_2,
                            patient_3,
                            patient_4,
                            patient_5,
                            nil];
    
    for (AKPatient* patient in patientList) {
        NSLog(@"Patient %@ is %@", patient.name, [patient youOk:patient.block] ? @"OK" : @"BAD");
    }
    
    
    
    //SUPERMAN LEVEL
    
    
    self.arrayPatient = patientList;
    
    
    
    
    //MY TEST!!!!
    
    void (^myTestBlock)(AKHuman*) = ^(AKHuman* human){
        if (human.temperature > 36.6f && human.temperature < 38.0f) {
            NSLog(@"Patient %@ have temperature %f", human.name, human.temperature);
            [human takePill];
        } else if (human.temperature > 38.0f) {
            NSLog(@"Patient %@ have temperature %f", human.name, human.temperature);
            [human makeShot];
        } else if (human.temperature < 36.6f) {
            NSLog(@"Patient %@ should rest", human.name);
        }
    };
    
    AKHuman* human_1 = [[AKHuman alloc]initWithBlock:myTestBlock];
    human_1.name = @"Bob";
    AKHuman* human_2 = [[AKHuman alloc]initWithBlock:myTestBlock];
    human_2.name = @"Jack";
    AKHuman* human_3 = [[AKHuman alloc]initWithBlock:myTestBlock];
    human_3.name = @"Poll";
    AKHuman* human_4 = [[AKHuman alloc]initWithBlock:myTestBlock];
    human_4.name = @"Tiron";
    AKHuman* human_5 = [[AKHuman alloc]initWithBlock:myTestBlock];
    human_5.name = @"Mike";
    
    NSArray* humans = [NSArray arrayWithObjects:human_1, human_2, human_3, human_4, human_5, nil];
    
    self.arrayHuman = humans;
    
    [self performSelector:@selector(string:) withObject:@"HELLO!"];
   // AKHuman* ww = [AKHuman initialize];
    

    
    
    return YES;
}

#pragma mark - Methods for Blocks

- (void) methodForBlock1:(NewTypeBlock1) block {
    NSLog(@"Call method for block 1.");
    block();
    block();
}

- (void) methodForBlock2:(NewTypeBlock2) block num:(NSInteger) firstNum num:(NSInteger) intValue str2:(NSString*) str2 {
    NSLog(@"Call method for block 2.");
    block(firstNum, intValue, str2);
    block(firstNum, intValue, str2);
}

- (void) methodForBlock3:(NewTypeBlock3) block strFirst:(NSString*) str1 num:(NSInteger) intValue str2:(NSString*) str2 {
    NSString* newStr = block(str1, intValue, str2);
    NSLog(@"Return result from block: %@", newStr);
}


//-----------------------------------
- (void) string:(NSString*) str {
    NSLog(@"String: %@", str);
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
