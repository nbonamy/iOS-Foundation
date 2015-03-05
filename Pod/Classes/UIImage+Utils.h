//
//  UIImage+Utils.h
//  Foundation
//
//  Created by Nicolas Bonamy on 06/01/2014.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Utils)

+ (UIImage *)imageWithColor:(UIColor *)color;
+ (UIImage *)imageWithColor:(UIColor *)color ofWidth:(int) width andHeight:(int) height;

@end
