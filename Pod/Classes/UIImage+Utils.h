//
//  UIImage+Utils.h
//  Foundation
//
//  Created by Nicolas Bonamy on 06/01/2014.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Utils)

- (UIImage*) scaleToSize:(CGSize) size;

+ (UIImage *)imageWithColor:(UIColor*) color;
+ (UIImage *)imageWithColor:(UIColor*) color ofWidth:(int) width andHeight:(int) height;

@end
