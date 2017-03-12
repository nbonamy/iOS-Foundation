//
//  Notify.h
//  Foundation
//
//  Created by Nicolas Bonamy on 01/03/2014.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import <Foundation/Foundation.h>

#define TOAST_DURATION_SHORT 1
#define TOAST_DURATION_NORMAL 3
#define TOAST_DURATION_LONG 5

#define TOAST_TYPE_MESSAGE 0
#define TOAST_TYPE_WARNING 1
#define TOAST_TYPE_ERROR 2
#define TOAST_TYPE_SUCCESS 3

@interface DisableNotificationController : UIViewController
@end

@interface Notify : NSObject

+ (void) showToastError:(NSString*) message;
+ (void) showToastWarning:(NSString*) message;

+ (void) showToastMessage:(NSString*) message
									 ofType:(NSInteger) type
							forDuration:(NSInteger) duration;

+ (void) showAlertMessage:(NSString *)message
				cancelButtonTitle:(NSString *)cancelButtonTitle
				 otherButtonTitle:(NSString *)otherButtonTitle;

@end
