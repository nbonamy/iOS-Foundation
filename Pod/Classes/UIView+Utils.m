//
//  UIView+Utils.m
//  Mediastation
//
//  Created by Nicolas Bonamy on 10/14/11.
//  Copyright 2011 nabocorp. All rights reserved.
//

#import "UIView+Utils.h"
#import "MBProgressHUD.h"
#import "TSMessage.h"

@implementation UIView (Utils)

+ (CGSize) getScreenSize {
	
	// get screen size
	UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
	CGRect appFrame = [UIScreen mainScreen].applicationFrame;
	int fullWidth = appFrame.size.width;
	int fullHeight = appFrame.size.height;
	if (UIInterfaceOrientationIsLandscape(interfaceOrientation)) {
		int swap = fullWidth;
		fullWidth = fullHeight;
		fullHeight = swap;
	}
	
	// done
	return CGSizeMake(fullWidth, fullHeight);
}

+ (NSString*) getLocalization:(NSString*) message {
	NSString* label = NSLocalizedString(message, nil);
	return (label == nil ? message : label);
}

@end