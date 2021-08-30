//
//  AKPatient.h
//  Homework_12.Blocks
//
//  Created by Aleksandr Kan on 28.08.2021.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void (^CheckBlock)(void);
typedef void (^YouOk)(CheckBlock block);

@interface AKPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat temperature;
@property (copy, nonatomic) CheckBlock block;


- (BOOL) youOk:(CheckBlock) block;

@end

NS_ASSUME_NONNULL_END
