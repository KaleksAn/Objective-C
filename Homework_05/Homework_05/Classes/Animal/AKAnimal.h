//
//  AKAnimal.h
//  Homework_05
//
//  Created by Aleksandr Kan on 18.04.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKAnimal : NSObject

@property (strong, nonatomic) NSString* baseClass;
@property (strong, nonatomic) NSString* name;
@property (strong, nonatomic) NSString* area;
@property (strong, nonatomic) NSString* color;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) NSInteger countFoots;


- (void) animalMove;


@end

NS_ASSUME_NONNULL_END
