//
//  UIAlertView+Utility.h
//  Foundation
//
//  Created by Nicolas Bonamy on 12/03/2017.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertView (Utility)

/**
 * Uses [error localizedFailureReason] as UIAlertView title and [error localizedDescription] as its message.
 * 
 * @remarks
 *		The UIAlertView creation method lets you keep the dialog localized in case you provide translation
 *		for "OK" string in your Localizable.strings file.
 */
+ (UIAlertView *)alertViewFromError:(NSError *)error;

/**
 * There is often need to just show UIAlertView with a custom message and OK button without providing a delegate
 * or any custom buttons.
 * 
 * @remarks
 *		The UIAlertView creation method lets you keep the dialog localized in case you provide translation
 *		for "OK" string in your Localizable.strings file.
 */
+ (void) showWithMessage:(NSString*) message;

+ (void) showWithTitle:(NSString*) title
							 message:(NSString*) message;

/**
 * Shows a message only once: saves fact that was displayed in preferences.
 *
 * @remarks
 *		The UIAlertView creation method lets you keep the dialog localized in case you provide translation
 *		for "OK" string in your Localizable.strings file.
 */

+ (BOOL) showOnceWithTitle:(NSString*) title
			 andLocalizedMessage:(NSString*) messageId;

+ (BOOL) showOnceWithMessage:(NSString*) message
							 andIdentifier:(NSString*) identifier;

+ (BOOL) showOnceWithTitle:(NSString*) title
									 message:(NSString*) message
						 andIdentifier:(NSString*) identifier;

+ (void) resetAllPrompts;

@end
