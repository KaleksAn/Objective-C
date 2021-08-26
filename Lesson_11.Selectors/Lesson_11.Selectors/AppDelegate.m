//
//  AppDelegate.m
//  Lesson_11.Selectors
//
//  Created by Aleksandr Kan on 25.08.2021.
//

#import "AppDelegate.h"
#import "AKNewObject.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    AKNewObject* object = [[AKNewObject alloc] init];
    
    
    SEL selector_1 = @selector(myTestMethod);
    SEL selector_2 = @selector(testMethod);
    SEL selector_3 = @selector(testMethod:);
    SEL selector_4 = @selector(testMethod:parametr2:);
    SEL selector_5 = @selector(testAfterDaly);
    
    SEL* linkSelector = &selector_1;
    [self performSelector:*linkSelector];
    
    
    [self performSelector:selector_1];
    [self performSelector:selector_2];
    [self performSelector:@selector(testMethod)];
    [self performSelector:selector_3 withObject:@"My selector with string"];
    [self performSelector:selector_4 withObject:@"STRING 1" withObject:@"STRING 2"];
    [self performSelector:selector_5 withObject:nil afterDelay:10.f]; // Call method after 10 sec
    
    
    NSLog(@"TEST WITH SELECTORS");
    [self performSelector:selector_1];
    [object performSelector:selector_1];
    NSString* secret = [object performSelector:@selector(superSecretText)]; // Call hide method from AKNewObject class
    NSLog(@"Secret string: %@", secret);
    
    [self performSelector:@selector(testMethodParametr1:) withObject:[NSNumber numberWithInt:17]];
    
    //Создание строк из селекторов и обратно
    NSString* stringSelector = NSStringFromSelector(selector_1);
    
    //Создание селектора из строки
    SEL sel = NSSelectorFromString(stringSelector);
    
    NSString* string = [self testMethodParametr1:2 parametr2:3.1 parametr3:5.5];
    NSLog(@"string = %@", string);
    
    
    
    //
    SEL selectorNew = @selector(testMethodParametr1: parametr2: parametr3:);
    NSMethodSignature* signature = [AppDelegate instanceMethodSignatureForSelector:selectorNew];
    
    NSInvocation* invocation = [NSInvocation invocationWithMethodSignature:signature];
    [invocation setTarget:self];
    [invocation setSelector:selectorNew];
    
    NSInteger intVal = 2;
    CGFloat floatVal = 3.1f;
    double doubleVal = 5.5f;
    
    NSInteger* p1 = &intVal;
    CGFloat* p2 = &floatVal;
    double* p3 = &doubleVal;
    
    
    [invocation setArgument:p1 atIndex:2];
    [invocation setArgument:p2 atIndex:3];
    [invocation setArgument:p3 atIndex:4];
    
    [invocation invoke];
    
   __unsafe_unretained NSString* str = nil;
   // NSString** p4 = &str;
    [invocation getReturnValue:&str];
    
    NSLog(@"str = %@str", str);
    
    [self performSelector:@selector(myNumberTest:) withObject:[NSNumber numberWithInt:555]];
    
    return YES;
}


#pragma mark - Method's for selector's

- (void) myTestMethod {
    NSLog(@"Hello Selector!");
}


- (void) testMethod {
    NSLog(@"testMethod");
}

- (void) testMethod:(NSString*) string {
    NSLog(@"testMethod: %@", string);
}

- (void) testMethod:(NSString*) string1 parametr2:(NSString*) string2 {
    NSLog(@"testMethod: parametr_1 %@, parametr_2 %@", string1, string2);
}

- (void) testAfterDaly {
    NSLog(@"Test method after daly!");
}

- (void) testMethodParametr1:(NSInteger) intValue {
    NSLog(@"testMethodParametr1: %ld", intValue);
}

- (void) myNumberTest:(NSInteger) number {
    NSString* str = (NSString*) [NSNumber numberWithLong:number];
    NSLog(@"My number test on selector: %@", str);
}



- (NSString*) testMethodParametr1:(NSInteger) intValue parametr2:(CGFloat) floatValue parametr3:(double) doubleValue {

    return [NSString stringWithFormat:@"testMethodParametr2: %ld parametr2: %f parametr3:%f", intValue, floatValue, doubleValue];
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
