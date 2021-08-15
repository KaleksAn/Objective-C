//
//  AKDoctor.h
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import <Foundation/Foundation.h>
#import "AKPatient.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AKPatientDelegate;

@interface AKDoctor : NSObject <AKPatientDelegate>

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger expYears;
@property (strong, nonatomic) NSMutableDictionary* myReport;
@property (strong, nonatomic) NSMutableArray* keysArray;

- (void) printRaport;


@end

NS_ASSUME_NONNULL_END
