//
//  Notify.h
//  Foundation
//
//  Created by Nicolas Bonamy on 01/03/2014.
//
//

#import <Foundation/Foundation.h>

#define TOAST_DURATION_SHORT 1
#define TOAST_DURATION_NORMAL 3
#define TOAST_DURATION_LONG 5

@interface DisableNotificationController : UIViewController
@end

@interface Notify : NSObject

+ (void) showToastMessage:(NSString*) message;
+ (void) showToastMessage:(NSString*) message forDuration:(int)duration;

+ (void) showAlertMessage:(NSString *)message
				cancelButtonTitle:(NSString *)cancelButtonTitle
				 otherButtonTitle:(NSString *)otherButtonTitle;

@end
