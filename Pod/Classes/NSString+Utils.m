//
//  NSString+Utils.m
//  Foundation
//
//  Created by Nicolas Bonamy on 29/04/2014.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

- (NSString*) trim {
	return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

- (BOOL) isEmail {
	
	// remove accents
	NSString* sanitized = [self stringByFoldingWithOptions:NSDiacriticInsensitiveSearch locale:[NSLocale currentLocale]];
	
	// test it
	NSString *emailRegex = @"^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$";
	NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
	BOOL isValid = [emailTest evaluateWithObject:sanitized];
	return isValid;
	
}

-(NSString*) urlEncode {
	return [self urlEncodeUsingEncoding];
}

-(NSString*) urlEncodeUsingEncoding {
	return [self urlEncodeUsingEncoding:NSUTF8StringEncoding];
}

-(NSString*) urlEncodeUsingEncoding:(NSStringEncoding)encoding {
	
	return (__bridge NSString *)CFURLCreateStringByAddingPercentEscapes(NULL,
																																			(CFStringRef)self,
																																			NULL,
																																			(CFStringRef)@"!*'\"();:@&=+$,/?%#[]% ",
																																			CFStringConvertNSStringEncodingToEncoding(encoding));
	
}

+ (NSString*) stringFromDeviceToken:(NSData*) deviceToken {
	
	// check
	NSUInteger length = deviceToken.length;
	if (length == 0) {
		return nil;
	}
	
	// convert
	const unsigned char *buffer = deviceToken.bytes;
	NSMutableString *hexString  = [NSMutableString stringWithCapacity:(length * 2)];
	for (int i = 0; i < length; ++i) {
		[hexString appendFormat:@"%02x", buffer[i]];
	}
	
	// done
	return [hexString copy];
}

@end
