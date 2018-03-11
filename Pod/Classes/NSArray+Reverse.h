//
//  NSArray+Reverse.h
//  Foundation
//
//  Created by Nicolas Bonamy on 14/12/2013.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

//#import <Foundation/Foundation.h>

@interface NSArray (Reverse)
- (NSArray*) reversedArray;
@end

@interface NSMutableArray (Reverse)
- (void) reverse;
@end
