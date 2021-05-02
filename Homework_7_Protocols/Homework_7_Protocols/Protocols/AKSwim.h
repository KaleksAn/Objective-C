//
//  AKSwim.h
//  Homework_7_Protocols
//
//  Created by Aleksandr Kan on 30.04.2021.
//

#import <Foundation/Foundation.h>

typedef enum {
    Adidas,
    Nike,
    Puma,
    Reebok,
    NewBalance
} Brends;

NS_ASSUME_NONNULL_BEGIN

@protocol AKSwim
@required
#pragma mark -Propertys
@property (assign, nonatomic) CGFloat maxDistance;
@property (assign, nonatomic) CGFloat timeSwim;

#pragma mark -Methods
- (void) swimSlow;
- (void) swimFast;
- (void) dive;


@optional
#pragma mark -Propertys
@property (strong, nonatomic) NSString* favoriteBook;
@property (assign, nonatomic) NSInteger telephoneNumber;
@property (assign, nonatomic) Brends favoriteBrend;


#pragma  mark -Methods
- (void) cook;
- (void) toCleanHome;
- (void) readBook;

@end

NS_ASSUME_NONNULL_END
