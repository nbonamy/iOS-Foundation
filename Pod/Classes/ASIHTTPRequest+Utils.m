//
//  ASIHTTPRequest+Utils.m
//  Foundation
//
//  Created by Nicolas Bonamy on 11/22/11.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import "ASIHTTPRequest+Utils.h"
/*#import "FoundationMacros.h"

@implementation ASIHTTPRequest (Utils)

static NSString* s_defaultErrorMessage;

+ (NSString*) defaultErrorMessage {
	return s_defaultErrorMessage;
}

+ (void) setDefaultErrorMessage:(NSString*) message {
	s_defaultErrorMessage = message;
}

- (BOOL) isHTTPError {
	
	// global error
	//if ([self error]) {
	//	return YES;
	//}
	
	// http processing error
	if (self.responseStatusCode != 200) {
		
		// the error message
		NSString* message = self.responseString;
		if (message == nil) message = s_defaultErrorMessage;
		if (message == nil) message = @"Erreur / Error";
		
		// set error
		NSDictionary* dictInfo = [NSDictionary dictionaryWithObject:message forKey:NSLocalizedDescriptionKey];
		[self setError:[NSError errorWithDomain:@"HTTP_Error"
																			 code:[self responseStatusCode]
																	 userInfo:dictInfo]];
		return YES;
	}
	
	// fine
	return NO;
}

- (BOOL) isPHPError {
	
	// starts with a php error
	//if ([self isHTTPError] == YES) {
	//	return YES;
	//}
	
	// this should not be returned by our WS
	if ([self responseString] != NULL) {
		if ([[self responseString] rangeOfString:@"fatal error" options:NSCaseInsensitiveSearch].location != NSNotFound) {
			
			// the error message
			NSDictionary* dictInfo = [NSDictionary dictionaryWithObject:[self responseString] forKey:NSLocalizedDescriptionKey];
			
			// set error
			[self setError:[NSError errorWithDomain:@"HTTP_Error"
																				 code:500
																		 userInfo:dictInfo]];
			return YES;
		}
	}
	
	// fine
	return NO;
}

@end
*/
