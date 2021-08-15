//
//  AKBadDoctor.h
//  Homework_09.Delegates
//
//  Created by Aleksandr Kan on 10.08.2021.
//

#import <Foundation/Foundation.h>
#import "AKPatient.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AKPatientDelegate;

@interface AKBadDoctor : NSObject <AKPatientDelegate>

@property (strong, nonatomic) NSString* name;


@end

NS_ASSUME_NONNULL_END
