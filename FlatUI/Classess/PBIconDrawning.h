//
//  PBIconDrawning.h
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 13.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    PBFlatIconAdd,
    PBFlatIconBack,
    PBFlatIconForward,
    PBFlatIconSearch,
    PBFlatIconMenu,
    PBFlatIconMore,
} PBFlatIconType;

@interface PBIconDrawning : NSObject
+ (void)drawIconInRect:(CGRect)rect withType:(PBFlatIconType)type color:(UIColor *)color;
+ (UIImage *)iconImageWithSize:(CGSize)size withType:(PBFlatIconType)type inverseColor:(BOOL)inverse;
@end
