//
//  NSString+Utils.m
//  Foundation
//
//  Created by Nicolas Bonamy on 29/04/2014.
//
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

@end
