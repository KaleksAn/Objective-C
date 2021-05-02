//
//  AppDelegate.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import "AppDelegate.h"
#import "Classes/People/Base class Human/AKHuman.h"
#import "Classes/People/Child/AKChild.h"
#import "Classes/People/Actor/AKActor.h"
#import "Classes/People/Lazy man/AKLazyMan.h"
#import "Classes/People/Racer/AKRacer.h"
#import "Classes/People/Runner/AKRunner.h"
#import "Classes/People/Cycler/AKCycler.h"
#import "Classes/People/Student/AKStudent.h"
#import "Classes/People/Jumper/AKJumper.h"
#import "Classes/People/Developer/AKDeveloper.h"

#import "Classes/Animals/Base class Animal/AKAnimal.h"
#import "Classes/Animals/Crocodile/AKCrocodile.h"
#import "Classes/Animals/Dolphin/AKDolphin.h"
#import "Classes/Animals/Elephant/AKElephant.h"
#import "Classes/Animals/Dog/AKDog.h"
#import "Classes/Animals/Mouse/AKMouse.h"
#import "Classes/Animals/Snake/AKSnake.h"
#import "Classes/Animals/Falcon/AKFalcon.h"
#import "Classes/Animals/Guepard/AKGuepard.h"
#import "Classes/Animals/Monkey/AKMonkey.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
#pragma mark People
    AKHuman* human = [AKHuman new];
    AKChild* child = [[AKChild alloc] init];
    AKActor* actor = [[AKActor alloc]init];
    AKLazyMan* lazyMan = [[AKLazyMan alloc] init];
    AKRacer* racer = [[AKRacer alloc] init];
    AKRunner* runner = [[AKRunner alloc] init];
    AKCycler* cycler = [[AKCycler alloc] init];
    AKStudent* student = [[AKStudent alloc] init];
    AKJumper* jumper = [[AKJumper alloc] init];
    AKDeveloper* developer = [[AKDeveloper alloc] init];
    
    human.name = @"Jack";
    human.surname = @"Frost";
    human.age = 23;
    human.weight = 88.f;
    human.height = 176.0f;
    human.gender = Man;
    human.citizen = Usa;
    
    child.name = @"Victor";
    child.surname = @"Tsoy";
    child.age = 10;
    child.weight = 35.f;
    child.height = 120.5f;
    child.gender = Man;
    child.citizen = Russia;
    //Jump Protocol
    child.maxJumpSize = 0.5f;
    child.maxLengthJump = 0.5f;
    
    actor.name = @"Jack";
    actor.surname = @"Black";
    actor.age = 52;
    actor.weight = 87.2f;
    actor.height = 170.f;
    actor.gender = Man;
    actor.citizen = Usa;
    //Run Protocol
    actor.midleSpeed = 4.3f;
    actor.maxSpeed = 5.f;
    actor.maxDistanceForRun = 13.f;
    actor.phoneBrend = Samsung;
    actor.favoriteSport = Ufc;
    //Jump Protocol
    actor.maxJumpSize = 2.2;
    actor.maxLengthJump = 2.4f;
    actor.favoriteMovie = @"The best";
    //Swim Protocol
    actor.maxDistance = 150.0f;
    actor.timeSwim = 3.3f;
    
    lazyMan.name = @"Vladimir";
    lazyMan.surname = @"Petrov";
    lazyMan.age = 44;
    lazyMan.weight = 66.9f;
    lazyMan.height = 163.5f;
    lazyMan.gender = Man;
    lazyMan.citizen = Kazahstan;
    
    racer.name = @"Erton";
    racer.surname = @"Senna";
    racer.age = 38;
    racer.weight = 67.f;
    racer.height = 165.f;
    racer.gender = Man;
    racer.citizen = Brazil;
    //Run protocol
    racer.midleSpeed = 101.f;
    racer.maxSpeed = 400.f;
    racer.maxDistanceForRun = 200.f;
    
    runner.name = @"Anna";
    runner.surname = @"Polyakova";
    runner.age = 29;
    runner.weight = 64.f;
    runner.height = 170.f;
    runner.gender = Woman;
    runner.citizen = Russia;
    //Run Protcol
    runner.midleSpeed = 14.f;
    runner.maxSpeed = 20.f;
    runner.maxDistanceForRun = 400.f;
    runner.countWin = 43;
    runner.favoriteSport = Ufc;
    runner.phoneBrend = Apple;
    
    cycler.name = @"Kate";
    cycler.surname = @"Lipa";
    cycler.age = 32;
    cycler.weight = 64.f;
    cycler.height = 171.f;
    cycler.gender = Woman;
    cycler.citizen = Brazil;
    //Run Protocol
    cycler.midleSpeed = 34.f;
    cycler.maxSpeed = 40.f;
    cycler.maxDistanceForRun = 300.f;
    cycler.countWin = 23;
    cycler.favoriteSport = Soccer;
    
    
    student.name = @"Song";
    student.surname = @"Li";
    student.age = 18;
    student.weight = 68.9f;
    student.height = 169.0f;
    student.gender = Man;
    student.citizen = KoreaRepublic;
    //Property for Jump
    student.maxJumpSize = 1.0f;
    student.maxLengthJump = 3;
    student.favoriteFood = @"Burger";
    //Property for Run
    student.midleSpeed = 1.5f;
    student.maxSpeed = 3.0f;
    student.maxDistanceForRun = 8.0f;
    student.phoneBrend = Xiaomi;
    
    jumper.name = @"Rashid";
    jumper.surname = @"Fecer";
    jumper.age = 27;
    jumper.weight = 88.f;
    jumper.height = 181.f;
    jumper.gender = Man;
    jumper.citizen = Kazahstan;
    //Property for jump protocol
    jumper.maxJumpSize = 2.2f;
    jumper.maxLengthJump = 3.2f;
    jumper.favoriteFood = @"Banana";
    jumper.favoriteMovie = @"LOST";
    
    developer.name = @"Alexander";
    developer.surname = @"Kan";
    developer.age = 27;
    developer.weight = 75.f;
    developer.height = 179.f;
    developer.gender = Man;
    developer.citizen = Usa;
    
#pragma mark Animals
    AKAnimal* animal = [AKAnimal new];
    AKCrocodile* crocodile = [[AKCrocodile alloc] init];
    AKDolphin* dolphin = [[AKDolphin alloc] init];
    AKElephant* elephant = [[AKElephant alloc] init];
    AKDog* dog = [[AKDog alloc] init];
    AKMouse* mouse = [[AKMouse alloc] init];
    AKSnake* snake = [[AKSnake alloc] init];
    AKFalcon* falcon = [[AKFalcon alloc] init];
    AKGuepard* guepard = [[AKGuepard alloc] init];
    AKMonkey* monkey = [[AKMonkey alloc] init];
    
    animal.kind = @"Animal";
    animal.name = @"Kind object";
    animal.age = 1;
    animal.weight = 12.f;
    animal.height = 23.f;
    animal.gender = Boy;
    animal.countLegs = 4;
    
    crocodile.kind = @"Reptile";
    crocodile.name = @"Gena crocodile";
    crocodile.age = 3;
    crocodile.weight = 105.4f;
    crocodile.height = 121.4f;
    crocodile.gender = Boy;
    crocodile.countLegs = 4;
    
    dolphin.kind = @"Fish";
    dolphin.name = @"Dandy dolphin";
    dolphin.age = 5;
    dolphin.weight = 109.f;
    dolphin.height = 190.4f;
    dolphin.gender = Boy;
    dolphin.countLegs = 0;
    //property for AKJUMP prtocol
    dolphin.maxJumpSize = 5.0f;
    dolphin.maxLengthJump = 6.5f;
    
    
    elephant.kind = @"Elephant";
    elephant.name = @"Dambo";
    elephant.age = 2;
    elephant.weight = 80.f;
    elephant.height = 130.5f;
    elephant.gender = Boy;
    elephant.countLegs = 4;
    
    dog.kind = @"Dogs";
    dog.name = @"Kevin";
    dog.age = 5;
    dog.weight = 25.8f;
    dog.height = 77.4f;
    dog.gender = Boy;
    dog.countLegs = 0;
    //Run
    dog.midleSpeed = 222.f;
    dog.maxSpeed = 22.2f;
    dog.maxDistanceForRun = 88.2f;
    //Jump
    dog.maxJumpSize = 2.2f;
    dog.maxLengthJump = 4.3;
    //Swim
    dog.maxDistance = 400.f;
    dog.timeSwim = 34.4f;
    
    mouse.kind = @"Mouse";
    mouse.name = @"Mickey";
    mouse.age = 105;
    mouse.weight = 10.2f;
    mouse.height = 14.f;
    mouse.gender = Boy;
    mouse.countLegs = 2;
    
    snake.kind = @"Reptile";
    snake.name = @"Python";
    snake.age = 22;
    snake.weight = 35.f;
    snake.height = 140.8f;
    snake.gender = Boy;
    snake.countLegs = 0;
    snake.maxDistance = 300.f;
    snake.timeSwim = 40.f;
    
    falcon.kind = @"Eagle";
    falcon.name = @"Tekz";
    falcon.age = 6;
    falcon.weight = 25.9;
    falcon.height = 49.8;
    falcon.gender = Boy;
    falcon.countLegs = 2;
    
    guepard.kind = @"Cats";
    guepard.name = @"Leo";
    guepard.age = 3;
    guepard.weight = 50.3f;
    guepard.height = 120.4;
    guepard.gender = Boy;
    guepard.countLegs = 4;
    guepard.midleSpeed = 44.5f;
    guepard.maxSpeed = 65.4f;
    guepard.maxDistanceForRun = 120.f;
    
    monkey.kind = @"Primat";
    monkey.name = @"Oscar";
    monkey.age = 6;
    monkey.weight = 68.9;
    monkey.height = 140.f;
    monkey.gender = Boy;
    monkey.countLegs = 4;
    monkey.maxJumpSize = 5.f;
    monkey.maxLengthJump = 5.f;
    monkey.favoriteFood = @"Mango";
    
    
#pragma mark Array Task
    
    NSArray* peopleAndAnimals = [NSArray arrayWithObjects: monkey, human, falcon, lazyMan,
                                 child, guepard, snake, dolphin, student, actor, cycler, crocodile,
                                 mouse, developer,  dog, elephant, animal, runner, jumper, racer, nil];
    
    for (id person in peopleAndAnimals) {
        if ([person conformsToProtocol:@protocol(AKRun)]) {
            
            NSLog(@"PROTOCOL RUN FOR PEOPLE");
            [self checkSelector:person];
            [person slowRun];
            [person fastRun];
            [person overBlockRun];
            [self checkOptionalRun:person];
            NSLog(@"");
            
        } else if ([person conformsToProtocol:@protocol(AKJump)]) {
            
            NSLog(@"PROTOCOL JUMP FOR PEOPLE");
            [self checkSelector:person];
            [person jumpToUp];
            [person jumpToLength];
            [person jumpOver];
            [self checkOptionalJump:person];
            NSLog(@"");
            
        } else if ([person conformsToProtocol:@protocol(AKSwim)]) {
            
            NSLog(@"PROTOCOL JUMP FOR PEOPLE");
            [self checkSelector:person];
            [person swimSlow];
            [person swimFast];
            [person dive];
            [self checkOptionalSwim:person];
            NSLog(@"");
        }
    }
    
    NSLog(@"SECOND LOOP ->");
    
    for (id person in peopleAndAnimals) {
        if ([person conformsToProtocol:@protocol(AKRun)] && [person conformsToProtocol:@protocol(AKJump)] &&
            [person conformsToProtocol:@protocol(AKSwim)]) {
            NSLog(@"ALL PROTOCOLS RUN");
            [self checkSelector:person];
            [person slowRun];
            [person fastRun];
            [person overBlockRun];
            [person jumpOver];
            [person jumpToUp];
            [person jumpToLength];
            [person swimFast];
            [person swimSlow];
            [person dive];
            NSLog(@"");
        }
    }
    
    
    return YES;
}
//

- (void) checkSelector:(id) object {
    if ([object respondsToSelector:@selector(printProperty)]) {
        [object printProperty];
    } else {
        NSLog(@"Object not conform method \"printProperty\".");
    }
}


- (void) checkOptionalJump:(id) object {
    
    if ([object respondsToSelector:@selector(goToMarket)]) {
        [object goToMarket];
    }
    
    if ([object respondsToSelector:@selector(watchTv)]) {
        [object watchTv];
    }
    
    if ([object respondsToSelector:@selector(whatYouSeeOnTv)]) {
        NSLog(@"%@", [object whatYouSeeOnTv]);
    }
    
}

- (void) checkOptionalSwim:(id) object {
    if ([object respondsToSelector:@selector(cook)]) {
        [object cook];
    }
    
    if ([object respondsToSelector:@selector(toCleanHome)]) {
        [object toCleanHome];
    }
    
    if ([object respondsToSelector:@selector(readBook)]) {
        [object readBook];
    }
}

- (void) checkOptionalRun:(id) object {
    if ([object respondsToSelector:@selector(sayHello)]) {
        [object sayHello];
    }
    
    if ([object respondsToSelector:@selector(howAreYou)]) {
        [object howAreYou];
    }
    
    if ([object respondsToSelector:@selector(callFriend)]) {
        [object callFriend];
    }
    
    if ([object respondsToSelector:@selector(driveCar)]) {
        [object driveCar];
    }
    
    if ([object respondsToSelector:@selector(hunt)]) {
        [object hunt];
    }
    
    if ([object respondsToSelector:@selector(relax)]) {
        [object relax];
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
