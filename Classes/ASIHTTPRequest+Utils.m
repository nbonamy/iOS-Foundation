//
//  ASIHTTPRequest+Utils.m
//  Foundation
//
//  Created by Nicolas Bonamy on 11/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ASIHTTPRequest+Utils.h"

@implementation ASIHTTPRequest (Utils)

- (BOOL) isHTTPError {
	
	// global error
	//if ([self error]) {
	//	return YES;
	//}
	
	// http processing error
	if ([self responseStatusCode] != 200) {
		
		// the error message
		NSString* errorMessage = [NSString stringWithFormat:@"%d: %@", [self responseStatusCode], [self responseString]];
		NSDictionary* dictInfo = [NSDictionary dictionaryWithObject:errorMessage forKey:NSLocalizedDescriptionKey];
		
		// set error
		[self setError:[NSError errorWithDomain:@"HTTP_Error"
																			 code:1
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
																				 code:1
																		 userInfo:dictInfo]];
			return YES;
		}
	}
	
	// fine
	return NO;
}

@end
