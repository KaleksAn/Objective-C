//
//  AKSnake.m
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 01.05.2021.
//

#import "AKSnake.h"

@implementation AKSnake

#pragma mark -AKSwim Protocol
- (void) swimSlow {
    NSLog(@"Snake very slow swim on lake");
}

- (void) swimFast {
    NSLog(@"Snake very fast swim when to atack");
}


- (void) dive {
    NSLog(@"Snake dive when catch fish");
}

@end
