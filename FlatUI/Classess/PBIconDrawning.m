//
//  PBIconDrawning.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 13.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBIconDrawning.h"
#import "PBFlatSettings.h"


@implementation PBIconDrawning

+ (void)drawIconInRect:(CGRect)rect withType:(PBFlatIconType)type color:(UIColor *)color {
    
    switch (type) {
        case PBFlatIconAdd:
            [self drawAddIconInRect:rect withColor:color];
            break;
        case PBFlatIconBack:
            [self drawBackIconInRect:rect withColor:color];
            break;
        case PBFlatIconForward:
            [self drawForwardIconInRect:rect withColor:color];
            break;
        case PBFlatIconSearch:
            [self drawSearchIconInRect:rect withColor:color];
            break;
        case PBFlatIconMenu:
            [self drawMenuIconInRect:rect withColor:color];
            break;
        case PBFlatIconMore:
            [self drawMoreIconInRect:rect withColor:color];
            break;
        default:
            break;
    }
}

+ (UIImage *)iconImageWithSize:(CGSize)size withType:(PBFlatIconType)type inverseColor:(BOOL)inverse {
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);

    [self drawIconInRect:rect withType:type color: inverse ? [[PBFlatSettings sharedInstance] mainColor] :[[PBFlatSettings sharedInstance] iconImageColor]];
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;

}

+ (void)drawBackIconInRect:(CGRect)rect withColor:(UIColor *)color {
    
    rect = CGRectMake(CGRectGetMinX(rect) + 5.0f, CGRectGetMinY(rect) + 7.0f, CGRectGetWidth(rect) - 7.0f, CGRectGetHeight(rect) - 14.0f);
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    
    CGPoint beginPoint = CGPointMake(floorf(CGRectGetMaxX(rect) * 2/3), CGRectGetMinY(rect));
    CGPoint middlePoint = CGPointMake(floorf(CGRectGetMaxX(rect) * 1/3), CGRectGetMidY(rect));
    CGPoint endPoint = CGPointMake(floorf(CGRectGetMaxX(rect) * 2/3), CGRectGetMaxY(rect));
    
    [bezierPath moveToPoint: beginPoint];
    [bezierPath addLineToPoint: middlePoint];
    [bezierPath addLineToPoint: endPoint];
    [color setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    [bezierPath closePath];

}
+ (void)drawForwardIconInRect:(CGRect)rect withColor:(UIColor *)color {
    
    rect = CGRectMake(CGRectGetMinX(rect) + 8.0f, CGRectGetMinY(rect) + 7.0f, CGRectGetWidth(rect) - 7.0f, CGRectGetHeight(rect) - 14.0f);
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    
    CGPoint beginPoint = CGPointMake(floorf(CGRectGetMaxX(rect) * 1/3), CGRectGetMinY(rect));
    CGPoint middlePoint = CGPointMake(floorf(CGRectGetMaxX(rect)* 2/3), CGRectGetMidY(rect));
    CGPoint endPoint = CGPointMake(floorf(CGRectGetMaxX(rect) * 1/3), CGRectGetMaxY(rect));
    
    [bezierPath moveToPoint: beginPoint];
    [bezierPath addLineToPoint: middlePoint];
    [bezierPath addLineToPoint: endPoint];
    [color setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    [bezierPath closePath];
    
}
+ (void)drawSearchIconInRect:(CGRect)rect withColor:(UIColor *)color {
    
    CGRect roundrect = CGRectMake(CGRectGetMinX(rect) + 7.0f, CGRectGetMinY(rect) + 7.0f, CGRectGetWidth(rect) - 20.0f, CGRectGetHeight(rect) - 20.0f);
    
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: roundrect];
    [color setStroke];
    [ovalPath stroke];

    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMaxX(roundrect) - 2.0f, CGRectGetMaxY(roundrect) - 2.0f)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(rect) - 9.0f, CGRectGetMaxY(rect) - 9.0f)];
    [color setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
}
+ (void)drawMenuIconInRect:(CGRect)rect withColor:(UIColor *)color {
    
    rect = CGRectInset(rect, 5, 5);
    
    CGFloat drawHeight = CGRectGetHeight(rect) - 4.0f;
    CGFloat offset = floorf(drawHeight / 3.0f);
    
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + offset)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect) + offset)];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + 2 * offset)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect) + 2 * offset)];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(rect), CGRectGetMinY(rect) + 3 * offset)];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(rect), CGRectGetMinY(rect) + 3 * offset)];
    [color setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];

}
+ (void)drawMoreIconInRect:(CGRect)rect withColor:(UIColor *)color {
    CGFloat size = MIN(CGRectGetHeight(rect), CGRectGetWidth(rect));
    CGFloat offset = 0.1 * size;
    CGFloat radius = floorf(size/ 3.0f - offset);
    
    CGFloat vertical = floorf(CGRectGetMidY(rect) - radius/2.0f);
    
    CGRect firstRect = CGRectMake(CGRectGetMinX(rect) + offset, vertical, radius, radius);
    CGRect secondRect = CGRectMake(CGRectGetMaxX(firstRect) + offset, vertical, radius, radius);
    CGRect thirdRect = CGRectMake(CGRectGetMaxX(secondRect) + offset, vertical, radius, radius);
    
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: firstRect];
    UIBezierPath* ovalPath2 = [UIBezierPath bezierPathWithOvalInRect: secondRect];
    UIBezierPath* ovalPath3 = [UIBezierPath bezierPathWithOvalInRect: thirdRect];
    
    [color setFill];
    [ovalPath fill];
    [ovalPath2 fill];
    [ovalPath3 fill];
    
}
+ (void)drawAddIconInRect:(CGRect)rect withColor:(UIColor *)color {
    CGRect drawRect = CGRectInset(rect, 5, 5);
    
    UIColor *strokeColor = color;
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(drawRect), floorf(CGRectGetMidY(drawRect)))];
    [bezierPath addLineToPoint: CGPointMake(CGRectGetMaxX(drawRect), floorf(CGRectGetMidY(drawRect)))];
    [bezierPath moveToPoint: CGPointMake(floorf(CGRectGetMidX(drawRect)), CGRectGetMinY(drawRect))];
    [bezierPath addLineToPoint: CGPointMake(floorf(CGRectGetMidX(drawRect)), CGRectGetMaxY(drawRect))];
    [strokeColor setStroke];
    bezierPath.lineWidth = 1;
    [bezierPath stroke];
    
}
@end
