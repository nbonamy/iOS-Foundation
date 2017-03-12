//
//  NSDictionary+Safe.m
//  Scorecast
//
//  Created by Nicolas Bonamy on 11/20/11.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import "NSDictionary+Safe.h"

@implementation NSDictionary (Safe)

- (int) getIntValueForKey:(NSString*) key withDefault:(int) defaultValue {
	id value = [self valueForKey:key];
	if (value == nil || [value isKindOfClass:[NSNull class]]) {
		return defaultValue;
	}
	if ([value isKindOfClass:[NSString class]] && [value length] == 0) {
		return defaultValue;
	}
	return [value intValue];
}

@end
