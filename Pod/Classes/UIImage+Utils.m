//
//  UIImage+Utils.m
//  Foundation
//
//  Created by Nicolas Bonamy on 06/01/2014.
//
//

#import "UIImage+Utils.h"

@implementation UIImage (Utils)

+ (UIImage *)imageWithColor:(UIColor *)color {
	return [UIImage imageWithColor:color ofWidth:1 andHeight:1];
}

+ (UIImage *)imageWithColor:(UIColor *)color ofWidth:(int) width andHeight:(int) height {

	CGRect rect = CGRectMake(0.0f, 0.0f, width, height);
	UIGraphicsBeginImageContext(rect.size);
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, [color CGColor]);
	CGContextFillRect(context, rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	
	return image;
}

@end
