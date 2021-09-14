//
//  AKStudent.m
//  Homework_13.Multithreading
//
//  Created by Aleksandr Kan on 05.09.2021.
//

#import "AKStudent.h"
#import <UIKit/UIKit.h>

@implementation AKStudent


- (void) numberAnswer:(NSInteger) number rangeForFind:(UInt32) range enterBlock:(void (^)(NSInteger, NSString*, float)) block {
  
   
    
    dispatch_queue_t queue = dispatch_queue_create("myQueue", DISPATCH_QUEUE_CONCURRENT);
    
    dispatch_async([AKStudent myThreadQueue], ^{
        NSLog(@"Thread start %@", [NSThread isMainThread] ? @"YES" : @"NO");
        __block long answer = 0;
        __block double startTime = CACurrentMediaTime();
        for (int i = 0; i < range; i++) {
            if (i == number) {
                answer = i;
                break;
            }

        }
        
//        while (answer != number) {
//            answer =  arc4random_uniform(range + 1);
//        }
        
            dispatch_async(dispatch_get_main_queue(), ^{
                if (block) {
                 //  __weak AKStudent* weakStudent = self;
                block(answer, self.name, CACurrentMediaTime() - startTime);
                    
                }
            });
    });
    
    
}



- (void) answer:(NSInteger) number andRange:(NSInteger) range {
   __block NSInteger answer = 0;
    __weak AKStudent* weakReference = self;
    
    dispatch_async(dispatch_get_main_queue(), ^{
        double startTime = CACurrentMediaTime();
        while (answer != number) {
            answer = (arc4random() % range) + 1;
        }
        
        NSLog(@"Student %@ find Answer: %li. Time: %f", self.name, answer, CACurrentMediaTime() - startTime);
    });
    
}


- (void) dealloc {
    NSLog(@"Object deleted");
}


//Метод возвращает очередь.
//Она создается только один раз, и является потокозащищенной
+ (dispatch_queue_t) myThreadQueue {
    static dispatch_queue_t queue = nil;
    static dispatch_once_t myMark;
    dispatch_once(&myMark, ^{
        queue = dispatch_queue_create("com.alexKan.singleQueue", DISPATCH_QUEUE_CONCURRENT);
    });
    return queue;
}

@end
