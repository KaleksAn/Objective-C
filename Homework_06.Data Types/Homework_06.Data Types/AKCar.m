//
//  AKCar.m
//  Homework_06.Data Types
//
//  Created by Aleksandr Kan on 20.04.2021.
//

#import "AKCar.h"

@implementation AKCar

- (NSString*) colorCar:(CarColor) iColor {
    NSString* carColor = @"";
    if (iColor == Black) {
        carColor = @"Black";
    } else if (iColor == White) {
        carColor = @"White";
    } else if (iColor == Green) {
        carColor = @"Green";
    } else if (iColor == Blue) {
        carColor = @"Blue";
    }

    return carColor;
}


- (NSInteger) seatInCar:(Seat) iSeat {
    NSInteger seatCount = 0;
    
    if (iSeat == Two) {
        seatCount = 2;
    } else if (iSeat == Four) {
        seatCount = 4;
    } else if (iSeat == Six) {
        seatCount = 6;
    }

    return seatCount;
}

- (NSString*) carType: (TypeCar) type {
    NSString* typeName = @"";
    
    if (type == Sedan) {
        typeName = @"SEDAN";
    } else if (type == SportsCar) {
        typeName = @"Sport car";
    } else if (type == Hatchback) {
        typeName = @"Hatchback";
    } else if (type == Coupe) {
        typeName = @"Coupe";
    } else if (type == Minivan) {
        typeName = @"Minivan";
    }
    
    return typeName;
}


@end
