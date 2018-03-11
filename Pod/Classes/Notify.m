//
//  Notify.m
//  Foundation
//
//  Created by Nicolas Bonamy on 01/03/2014.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import "Notify.h"
#import "TSMessage.h"

@implementation DisableNotificationController
@end

@implementation Notify

+ (void) showToastSuccess:(NSString*) message {
	[self showToastMessage:message
									ofType:TOAST_TYPE_SUCCESS
						 forDuration:TOAST_DURATION_NORMAL];
}

+ (void) showToastError:(NSString*) message {
	[self showToastMessage:message
									ofType:TOAST_TYPE_ERROR
						 forDuration:TOAST_DURATION_NORMAL];
}

+ (void) showToastWarning:(NSString*) message {
	[self showToastMessage:message
									ofType:TOAST_TYPE_WARNING
						 forDuration:TOAST_DURATION_NORMAL];
}

+ (void) showToastMessage:(NSString*) message
									 ofType:(NSInteger) type
							forDuration:(NSInteger) duration {

	// disabled?
	if ([[TSMessage defaultViewController] isKindOfClass:[DisableNotificationController class]]) {
		return;
	}

	// do it in main thread
	dispatch_async(dispatch_get_main_queue(), ^() {
		[TSMessage showNotificationInViewController:[TSMessage defaultViewController]
																					title:NSLocalizedString(message, nil)
																			 subtitle:nil
																					 type:type
																			 duration:duration
													 canBeDismissedByUser:TRUE];
	});

}

+ (void) showAlertMessage:(NSString *)message
				cancelButtonTitle:(NSString *)cancelButtonTitle
				 otherButtonTitle:(NSString *)otherButtonTitle {

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"PRODUCT_NAME", nil)
																									message:NSLocalizedString(message, nil)
																								 delegate:nil
																				cancelButtonTitle:NSLocalizedString(cancelButtonTitle, nil)
																				otherButtonTitles:(otherButtonTitle == nil) ? nil : NSLocalizedString(otherButtonTitle, nil),nil];
	[alert show];

}

@end
