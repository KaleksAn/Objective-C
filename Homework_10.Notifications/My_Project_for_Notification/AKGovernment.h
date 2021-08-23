//
//  AKGovernment.h
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 15.08.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

extern NSString* const AKGovernmentSalaryDidChangeNotification;
extern NSString* const AKGovernmentPensionDidChangeNotification;
extern NSString* const AKGovernmentTaxLevelDidChangeNotification;
extern NSString* const AKGovernmentAveragePriceDidChangeNotification;
extern NSString* const AKGovernmentInflationDidChangeNotification;

extern NSString* const AKGovernmentSalaryUserInfoKey;
extern NSString* const AKGovernmentPensionUserInfoKey;
extern NSString* const AKGovernmentTaxLevelUserInfoKey;
extern NSString* const AKGovernmentAveragePriceUserInfoKey;
extern NSString* const AKGovernmentInflationUserInfoKey;

@interface AKGovernment : NSObject

@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;


@end

NS_ASSUME_NONNULL_END
