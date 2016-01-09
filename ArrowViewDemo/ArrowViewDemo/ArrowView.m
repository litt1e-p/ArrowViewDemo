//
//  ArrowView.m
//  
//
//  Created by litt1e-p on 16/1/8.
//
//

#import "ArrowView.h"

@implementation ArrowView
@synthesize arrowColor;

- (UIColor *)arrowColor {
    if (arrowColor) return arrowColor;
    return [UIColor whiteColor]; // default Color
}

- (void)drawRect:(CGRect)rect {
    //// Bezier Drawing
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(0.0, rect.size.height * 0.6)];
    [bezierPath addLineToPoint: CGPointMake(rect.size.width * 0.5, rect.size.height)];
    [bezierPath addLineToPoint: CGPointMake(rect.size.width, rect.size.height * 0.6)];
    [self.arrowColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
    
    //// Bezier 2 Drawing
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(rect.size.width * 0.5, rect.size.height)];
    [bezier2Path addLineToPoint: CGPointMake(rect.size.width * 0.5, 0.0)];
    [self.arrowColor setStroke];
    bezier2Path.lineWidth = 1;
    [bezier2Path stroke];
}


@end
