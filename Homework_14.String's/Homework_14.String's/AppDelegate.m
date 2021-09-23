//
//  AppDelegate.m
//  Homework_14.String's
//
//  Created by Aleksandr Kan on 14.09.2021.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    //Level STUDENT and SUPERMAN
    NSMutableArray* arrayTextObjects = [[NSMutableArray alloc] init];
    NSMutableArray* arrayWordSwift = [[NSMutableArray alloc] init];
    NSMutableArray* reverseArray = [NSMutableArray array];
    
    
    NSInteger indexPart1 = 0;
    NSInteger indexPart2 = 0;
    
    NSString* myText = @"Swift is a new programming language for iOS, macOS, watchOS, and tvOS app development. Nonetheless, many parts of Swift will be familiar from your experience of developing in C and Objective-C.Swift provides its own versions of all fundamental C and Objective-C types, including Int for integers, Double and Float for floating-point values, Bool for Boolean values, and String for textual data. Swift also provides powerful versions of the three primary collection types, Array, Set, and Dictionary, as described in Collection Types. Like C, Swift uses variables to store and refer to values by an identifying name. Swift also makes extensive use of variables whose values can’t be changed. These are known as constants, and are much more powerful than constants in C. Constants are used throughout Swift to make code safer and clearer in intent when you work with values that don’t need to change. In addition to familiar types, Swift introduces advanced types not found in Objective-C, such as tuples. Tuples enable you to create and pass around groupings of values. You can use a tuple to return multiple values from a function as a single compound value. Swift also introduces optional types, which handle the absence of a value. Optionals say either “there is a value, and it equals x” or “there isn’t a value at all”. Using optionals is similar to using nil with pointers in Objective-C, but they work for any type, not just classes. Not only are optionals safer and more expressive than nil pointers in Objective-C, they’re at the heart of many of Swift’s most powerful features. Swift is a type-safe language, which means the language helps you to be clear about the types of values your code can work with. If part of your code requires a String, type safety prevents you from passing it an Int by mistake. Likewise, type safety prevents you from accidentally passing an optional String to a piece of code that requires a non-optional String. Type swift safety helps you catch and fix errors as early as possible in the development process.";
    
    NSInteger result = [myText length] / 2;
    
    if ([myText length] % 2 == 0) {
        indexPart1 = result;
        indexPart2 = result;
    } else {
        indexPart1 = result;
        indexPart2 = result + 1;
    }
    
    NSLog(@"PART 1: %@", [myText substringToIndex:indexPart1]);
    NSLog(@"PART 2: %@", [myText substringFromIndex:indexPart2]);
    NSLog(@"Length text: %lu", [myText length]);
    
    for (NSString* str in [myText componentsSeparatedByString:@"."]) {
        [arrayTextObjects addObject:str];
    }
    
    NSLog(@"ARRAY COUNT %lu", (unsigned long) [arrayTextObjects count]);
    
    for (NSString* string in arrayTextObjects) {
        if ([[string capitalizedString] containsString:@"Swift"]) {
            [arrayWordSwift addObject:string];
        }
        
    }
    
    NSLog(@"SWIFT ARRAY COUNT %lu", (unsigned long) [arrayWordSwift count]);
    
    for (NSString* reverseStr in arrayWordSwift) {
        [reverseArray addObject:[self string: reverseStr]];
    }
    
    NSLog(@"REVERSE ARRAY: %@", reverseArray);
    
    
    NSLog(@"REVERSE TEXT");
    NSString* reverseString = [self stringConvert:myText];
    NSLog(@"%@", reverseString);
    
    
    
    
    return YES;
}


#pragma mark - My Method's for String

//My reverse method for string

- (NSString*) string:(NSString*) str {
    NSMutableString* newString = [NSMutableString new];
    NSInteger length = [str length];

    while (length > 0) {
        --length;
        NSRange range = NSMakeRange(length, 1);
        [newString appendString:[str substringWithRange:range]];
    }

    return newString;
}


////Result
- (NSString*) stringConvert:(NSString*) str  {
    NSString* newStr = [[self string:str] lowercaseString];

    return [self string:[newStr capitalizedString]];
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
