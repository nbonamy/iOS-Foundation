//
//  UIAlert+Utility.m
//  Foundation
//
//  Created by Nicolas Bonamy on 12/03/2017.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import "UIAlert.h"

#define ONCE_PREFIX @"alert_once_"

@implementation UIAlert

static NSString* defaultTitle = @"";

+ (UIAlertView *)alertViewFromError:(NSError *)error {
	
	UIAlertView *result = [[UIAlertView alloc] initWithTitle:[error localizedFailureReason]
																										message:[error localizedDescription]
																									delegate:nil
																					cancelButtonTitle:NSLocalizedString(@"OK", @"")
																					otherButtonTitles:nil];
	return result;
}

+ (void) setDefaultTitle:(NSString*) title {
	defaultTitle = title;
}

+ (void)showWithTitle:(NSString *)title message:(NSString *)message {
	
	[[[UIAlertView alloc] initWithTitle:title
															message:message
															delegate:nil
										cancelButtonTitle:NSLocalizedString(@"OK", @"")
										otherButtonTitles:nil] show];
}

+ (void)showWithMessage:(NSString *)message {
	[UIAlert showWithTitle:defaultTitle message:message];
}

+ (BOOL) showOnceWithTitle:(NSString*) title
			 andLocalizedMessage:(NSString*) messageId {
	return [UIAlert showOnceWithTitle:NSLocalizedString(title, @"")
																message:NSLocalizedString(messageId, @"")
													andIdentifier:messageId];
}

+ (BOOL) showOnceWithMessage:(NSString*) message
							 andIdentifier:(NSString*) identifier {
	return [UIAlert showOnceWithTitle:@"" message:message andIdentifier:identifier];
}

+ (BOOL) showOnceWithTitle:(NSString*) title
									 message:(NSString*) message
						 andIdentifier:(NSString*) identifier {
	
	// add prefix to add clarity and be able to reset all prompts
	NSString* defaultsKey = [ONCE_PREFIX stringByAppendingString:identifier];
	
	// check if already displayed
	NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
	BOOL displayed = [userDefaults boolForKey:defaultsKey];
	if (displayed) {
		return FALSE;
	}
	
	// store it is
	[userDefaults setBool:TRUE forKey:defaultsKey];
	
	// show it
	[UIAlert showWithTitle:title message:message];
	
	// done
	return TRUE;
	
}

+ (void) resetAllPrompts {
	
	// get all keys
	NSUserDefaults* userDefaults = [NSUserDefaults standardUserDefaults];
	NSArray* keys = [[userDefaults dictionaryRepresentation] allKeys];
	
	// iterate
	for (NSString* key in keys) {
		if ([key hasPrefix:ONCE_PREFIX]) {
			[userDefaults removeObjectForKey:key];
		}
	}
	
}

@end
