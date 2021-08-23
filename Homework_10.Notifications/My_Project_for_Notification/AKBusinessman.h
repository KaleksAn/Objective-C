//
//  AKBusinessman.h
//  My_Project_for_Notification
//
//  Created by Aleksandr Kan on 17.08.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AKBusinessman : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

@end

NS_ASSUME_NONNULL_END
