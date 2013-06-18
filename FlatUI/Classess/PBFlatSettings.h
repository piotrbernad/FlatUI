//
//  PBFlatSettings.h
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <QuartzCore/QuartzCore.h>
#import "UIImage+Additions.h"

@interface PBFlatSettings : NSObject

@property (strong, readwrite) UIColor *mainColor;
@property (strong, readwrite) UIColor *secondColor;
@property (strong, readwrite) UIColor *backgroundColor;

@property (strong, readwrite) UIColor *iconImageColor;
@property (strong, readwrite) UIColor *textFieldPlaceHolderColor;
@property (strong, readwrite) UIFont *font;

+ (PBFlatSettings *)sharedInstance;
- (void)navigationBarApperance;
@end
