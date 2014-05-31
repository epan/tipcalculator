//
//  BackgroundLayer.h
//  tipcalculator
//
//  Created by Eric Pan on 5/31/14.
//  Copyright (c) 2014 Eric Pan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>

@interface BackgroundLayer : NSObject

+(CAGradientLayer*) greyGradient;
+(CAGradientLayer*) blueGradient;

@end
