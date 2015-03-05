//
//  NSArray+Reverse.m
//  Foundation
//
//  Created by Nicolas Bonamy on 14/12/2013.
//
//

#import "NSArray+Reverse.h"

@implementation NSArray (Reverse)

- (NSArray*) reversedArray {
	NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
	NSEnumerator *enumerator = [self reverseObjectEnumerator];
	for (id element in enumerator) {
		[array addObject:element];
	}
	return array;
}

@end

@implementation NSMutableArray (Reverse)

- (void) reverse {
	if ([self count] == 0)
		return;
	NSUInteger i = 0;
	NSUInteger j = [self count] - 1;
	while (i < j) {
		[self exchangeObjectAtIndex:i
							withObjectAtIndex:j];
		
		i++;
		j--;
	}
}

@end