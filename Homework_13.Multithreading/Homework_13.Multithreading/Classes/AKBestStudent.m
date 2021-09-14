//
//  AKBestStudent.m
//  Homework_13.Multithreading
//
//  Created by Aleksandr Kan on 09.09.2021.
//

#import "AKBestStudent.h"
#import <UIKit/UIKit.h>

@implementation AKBestStudent


- (void) numberAnswer:(NSInteger) number rangeForFind:(UInt32) range enterBlock:(void (^)(NSInteger, NSString*, float)) block {
    
    //Create Operation queue
    NSOperationQueue* queue = [[NSOperationQueue alloc] init]; //simple queue
    queue.name = @"alxKan.queue1.com";
    NSOperationQueue* mainQueue = [NSOperationQueue mainQueue];// main queue
    mainQueue.name = @"alxKan.mainQueue.com";
    
    
    
    __block NSInteger answer = 0;
    double startTimer = CACurrentMediaTime();
    __weak AKBestStudent* weakStudent = self;
    
    [queue addOperationWithBlock:^{
        while (answer != number) {
            answer = arc4random_uniform(range + 1);
           // answer = arc4random() % (range + 1);
        }
        
        
        if (answer == number && block) {
            [mainQueue addOperationWithBlock:^{
                NSLog(@"BEST Student %@ find answer %li. Time for find %f", self.name, answer, CACurrentMediaTime() - startTimer);
                block(answer, weakStudent.name, CACurrentMediaTime() - startTimer);
            }];
        }
        
        
       
        
        
        
        /*
        NSOperation* block = [[NSOperation alloc] init];
        block.name = @"First block";
        [block setCompletionBlock:^{
            NSLog(@"RakaFaka");
        }];
        
        [queue addOperation:block];
        */
       
    }];
    
    
}


//- (void) numberAnswer:(NSInteger) number rangeForFind:(UInt32) range enterBlock:(void (^)(NSInteger, NSString*, float)) block



@end
