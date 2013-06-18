//
//  PBFlatButtonWithIcon.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 13.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatButtonWithIcon.h"


@implementation PBFlatButtonWithIcon {
    UIColor *_backgroundColor;
    UIColor *_mainColor;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self appearanceButton];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self appearanceButton];
    }
    return self;
}

- (void)setType:(PBFlatIconType)type {
    _type = type;
    [self appearanceButton];
}

- (void)appearanceButton {
    _backgroundColor = [UIColor clearColor];
    _mainColor = [[PBFlatSettings sharedInstance] mainColor];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [self.titleLabel setFont:[[PBFlatSettings sharedInstance] font]];
    [self setImage:[PBIconDrawning iconImageWithSize:CGSizeMake(30, 30) withType:_type inverseColor:NO] forState:UIControlStateNormal];
}

- (void)drawRect:(CGRect)rect
{
    UIBezierPath* roundedRectanglePath = [UIBezierPath bezierPathWithRoundedRect: rect cornerRadius: 5];
    [_mainColor setFill];
    [roundedRectanglePath fill];

}

@end
