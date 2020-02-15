//
//  NSString+Utils.h
//  Foundation
//
//  Created by Nicolas Bonamy on 29/04/2014.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

//#import <Foundation/Foundation.h>

@interface NSString (Utils)

+ (NSString*) stringFromDeviceToken:(NSData*) deviceToken;

- (NSString*) trim;

- (BOOL) isEmail;

-(NSString*) urlEncode;
-(NSString*) urlEncodeUsingEncoding;
-(NSString*) urlEncodeUsingEncoding:(NSStringEncoding)encoding;

@end
