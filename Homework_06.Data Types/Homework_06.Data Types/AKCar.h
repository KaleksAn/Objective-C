//
//  AKCar.h
//  Homework_06.Data Types
//
//  Created by Aleksandr Kan on 20.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    Red,
    Green,
    Blue,
    Black,
    White
    
} CarColor;


typedef enum {
    Two,
    Four,
    Six
} Seat;


typedef enum {
    Sedan,
    SportsCar,
    Hatchback,
    Coupe,
    Minivan
    
} TypeCar;




@interface AKCar : NSObject

@property (strong, nonatomic) NSString* nameCar;
@property (assign, nonatomic) CarColor color;
@property (assign, nonatomic) Seat seatInCar;
@property (assign, nonatomic) TypeCar carType;


- (NSString*) colorCar:(CarColor) iColor;
- (NSInteger) seatInCar:(Seat) iSeat;
- (NSString*) carType: (TypeCar) type;

@end

NS_ASSUME_NONNULL_END
