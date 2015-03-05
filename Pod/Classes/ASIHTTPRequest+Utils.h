//
//  ASIHTTPRequest+Utils.h
//  Foundation
//
//  Created by Nicolas Bonamy on 11/22/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ASIHTTPRequest.h"

@interface ASIHTTPRequest (Utils)

- (BOOL) isHTTPError;
- (BOOL) isPHPError;

@end
