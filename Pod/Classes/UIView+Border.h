//
//  UIView+Border.h
//  Foundation
//
//  Created by Nicolas Bonamy on 08/08/2015.
//  Copyright (c) Nicolas Bonamy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIView (Border)

- (void) addTopBorderWithColor:(UIColor*) color andWidth:(CGFloat) borderWidth;
- (void) addBottomBorderWithColor:(UIColor*) color andWidth:(CGFloat) borderWidth;
- (void) addLeftBorderWithColor:(UIColor*) color andWidth:(CGFloat) borderWidth;
- (void) addRightBorderWithColor:(UIColor*) color andWidth:(CGFloat) borderWidth;

@end
