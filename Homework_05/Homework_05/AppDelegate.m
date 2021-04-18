//
//  AppDelegate.m
//  Homework_05
//
//  Created by Aleksandr Kan on 16.04.2021.
//

#import "AppDelegate.h"
#import "Classes/Human/AKHuman.h"
#import "Classes/Cyclist/AKCyclist.h"
#import "Classes/Runner/AKRunner.h"
#import "Classes/Swimmer/AKSwimmer.h"
#import "Classes/Developer/AKDeveloper.h"
#import "Classes/Animal/AKAnimal.h"
#import "Classes/Cat's/AKTiger.h"
#import "Classes/Fishe's/AKShark.h"
#import "Classes/Reptile's/AKSnake.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKHuman* human = [[AKHuman alloc] init];
    AKCyclist* cyclest = [[AKCyclist alloc] init];
    AKSwimmer* swimmer = [[AKSwimmer alloc] init];
    AKRunner* runner = [[AKRunner alloc] init];
    AKDeveloper* developer = [AKDeveloper new];
    
    
    human.name = @"Alex";
    human.age = 19;
    human.gender = @"Men";
    human.heightForHuman = 168.1f;
    human.weight = 67.5f;
    
    cyclest.name = @"Dima";
    cyclest.age = 25;
    cyclest.gender = @"Men";
    cyclest.heightForHuman = 172.7f;
    cyclest.weight = 69.2f;
    
    swimmer.name = @"Sergey";
    swimmer.age = 27;
    swimmer.gender = @"Men";
    swimmer.heightForHuman = 179.8f;
    swimmer.weight = 75.6f;
    
    runner.name = @"Anna";
    runner.age = 29;
    runner.gender = @"Woman";
    runner.heightForHuman = 166.2f;
    runner.weight = 58.f;
    
    [developer setName: @"Rick"];
    [developer setAge: 27];
    [developer setGender: @"Men"];
    [developer setHeightForHuman: 175.0f];
    [developer setWeight: 71.f];
    [developer setProffession: @"Software engineer"];
    [developer setLanguageForProgramming: @"Objective - C, Swift"];
    [developer setRating: 9.5];
    
    
    
    NSArray* peopleArray = [NSArray arrayWithObjects: human, cyclest, developer, swimmer, runner, nil];
    
    //Task 1
    for (int i = 0; i < [peopleArray count]; i++) {
        NSLog(@"Name person: %@", [[peopleArray objectAtIndex:i] name]);
        NSLog(@"Age: %ld", [[peopleArray objectAtIndex:i] age]);
        NSLog(@"Gender: %@", [[peopleArray objectAtIndex:i] gender]);
        NSLog(@"Height: %f", [[peopleArray objectAtIndex:i] heightForHuman]);
        NSLog(@"Weight: %f", [[peopleArray objectAtIndex:i] weight]);
        [[peopleArray objectAtIndex:i] move];
    }
    
    
    
    //Task 2
    NSLog(@"\n\t\t\t\tTask 2");
    for (AKHuman* person in [peopleArray reverseObjectEnumerator]) {
        if ([person isKindOfClass: [AKDeveloper class]]) {
            AKDeveloper* engineer = (AKDeveloper*) person;
            NSLog(@"");
            NSLog(@"Name: %@", engineer.name);
            NSLog(@"Age: %ld", engineer.age);
            NSLog(@"Gender: %@", engineer.gender);
            NSLog(@"Height: %f", engineer.heightForHuman);
            NSLog(@"Weight: %f", engineer.weight);
            NSLog(@"Proffession: %@", engineer.proffession);
            NSLog(@"Language for developing: %@", engineer.languageForProgramming);
            NSLog(@"Rating: %f", engineer.rating);
            [engineer move];
            
        } else {
            NSLog(@"");
            NSLog(@"Name: %@", person.name);
            NSLog(@"Age: %ld", person.age);
            NSLog(@"Gender: %@", person.gender);
            NSLog(@"Height: %f", person.heightForHuman);
            NSLog(@"Weight: %f", person.weight);
            [person move];
        }
        
        
    }
    
    
    //Task 3
    NSLog(@"");
    AKAnimal* animal = [[AKAnimal alloc] init];
    AKTiger* cat = [[AKTiger alloc] init];
    AKShark* shark = [[AKShark alloc] init];
    AKSnake* snake = [[AKSnake alloc] init];
    
    animal.baseClass = @"Parent class for animal's";
    animal.name = @"Base animal";
    animal.area = @"Earth planet";
    animal.color = @"White";
    animal.weight = 1.0f;
    animal.height = 0.7f;
    animal.countFoots = 3;
    
    cat.baseClass = @"Class Cat's";
    cat.name = @"Tiger class";
    cat.area = @"China, Russsia, India";
    cat.color = @"Black-White-Gold";
    cat.weight = 101.f;
    cat.height = 1.8f;
    cat.countFoots = 4;
    
    shark.baseClass = @"Class Fishe's";
    shark.name = @"Shark's class";
    shark.area = @"Ocean's and sea";
    shark.color = @"Whate, black, brown";
    shark.weight = 140.0f;
    shark.height = 2.0f;
    cat.countFoots = 0;
    
    snake.baseClass = @"Class reptile's";
    snake.name = @"Python's class";
    snake.area = @"Afrika and Brasil";
    snake.weight = 20.0f;
    snake.height = 240.5;
    snake.countFoots = 0;
    
    NSArray* peopleAndAnimals = [NSArray arrayWithObjects:human, cyclest, swimmer, runner, developer, animal, cat, shark, snake, nil];
    
    for (int i = 0; i < [peopleAndAnimals count] - 1; i++) {
        if ([[peopleAndAnimals objectAtIndex:i] isKindOfClass:[AKHuman class]]) {
            AKHuman* human = (AKHuman*) [peopleArray objectAtIndex:i];
            NSLog(@"");
            NSLog(@"Class: %@", [human class]);
            NSLog(@"Name person: %@", human.name);
            NSLog(@"Gender: %@", human.gender);
            NSLog(@"Age person: %ld", human.age);
            NSLog(@"Height: %f", human.heightForHuman);
            NSLog(@"Weight: %f", human.weight);
            [human move];
            
        } else if ([[peopleAndAnimals objectAtIndex:i] isKindOfClass:[AKAnimal class]]) {
            AKAnimal* animal = (AKAnimal*) [peopleAndAnimals objectAtIndex:i];
            NSLog(@"");
            NSLog(@"Class: %@", [animal class]);
            NSLog(@"Base class: %@", animal.baseClass);
            NSLog(@"Name: %@", animal.name);
            NSLog(@"Area: %@", animal.area);
            NSLog(@"Height: %f", animal.height);
            NSLog(@"Weight: %f", animal.weight);
            NSLog(@"Count leg's: %ld", animal.countFoots);
            [animal animalMove];
            
        } else {
            NSLog(@"UNKNOWN object!!!");
        }
        
    }
    
    //Task 4
    NSLog(@"");
    NSLog(@"Task 4");
    NSArray* animalsArray = [NSArray arrayWithObjects:animal, cat, shark, snake, nil];
    
    NSInteger count = [animalsArray count] + [peopleArray count];
    
    for (int i = 0; i < count; i++) {
        if (i < [peopleArray count]) {
            AKHuman* man = (AKHuman*) [peopleArray objectAtIndex:i];
            NSLog(@"");
            NSLog(@"Class: %@", [man class]);
            NSLog(@"Name: %@", man.name);
            NSLog(@"Age: %ld", man.age);
            NSLog(@"Gender: %@", man.gender);
            NSLog(@"Height: %f", man.heightForHuman);
            NSLog(@"Weight: %f", man.weight);
            [man move];
        }
        
        if (i < [animalsArray count]) {
            AKAnimal* animal = (AKAnimal*) [animalsArray objectAtIndex:i];
            NSLog(@"");
            NSLog(@"Class: %@", [animal class]);
            NSLog(@"Base class: %@", animal.baseClass);
            NSLog(@"Name: %@", animal.name);
            NSLog(@"Area: %@", animal.area);
            NSLog(@"Height: %f", animal.height);
            NSLog(@"Weight: %f", animal.weight);
            NSLog(@"Count leg's: %ld", animal.countFoots);
            [animal animalMove];
        }
        
        if (i > [peopleArray count] && i > [animalsArray count]) {
            NSLog(@"");
            NSLog(@"Loop is break!");
            break;
        }
        
    }
    
    
    //Task 5
    
    //Сортировка по дескриптору
    /*
    NSSortDescriptor* people = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:YES];
    NSSortDescriptor* animals = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:NO];
    
    NSArray* descriptorsArray = [NSArray arrayWithObjects:people, nil];
    NSArray* newArray = [peopleAndAnimals sortedArrayUsingDescriptors:descriptorsArray];
    */
    
    NSArray* sortedArray = [peopleAndAnimals sortedArrayUsingComparator:^NSComparisonResult(id obj_1, id obj_2) {
        if ([obj_1 isKindOfClass:[AKHuman class]] && [obj_2 isKindOfClass:[AKHuman class]]) {
            return [[(AKHuman*)obj_1 name] compare:[(AKHuman*) obj_2 name]];
        } else if ([obj_1 isKindOfClass:[AKAnimal class]] && [obj_2 isKindOfClass:[AKAnimal class]]) {
            return [[(AKAnimal*)obj_1 name] compare: [(AKAnimal*)obj_2 name]];
        } else if ([obj_1 isKindOfClass:[AKHuman class]]) {
            return NSOrderedAscending;
        } else {
            return NSOrderedDescending;
        }
    }];
    
    
    for (int i= 0; i < [sortedArray count]; i++) {
        NSLog(@"Name: %@", [[sortedArray objectAtIndex:i] name]);
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
