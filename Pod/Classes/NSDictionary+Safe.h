//
//  NSDictionary+Safe.h
//  Scorecast
//
//  Created by Nicolas Bonamy on 11/20/11.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (Safe)

- (int) getIntValueForKey:(NSString*) key withDefault:(int) defaultValue;

@end
