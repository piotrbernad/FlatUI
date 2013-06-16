//
//  PBFlatTextfield.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatTextfield.h"

@implementation PBFlatTextfield {
    UIColor *_backgroundColor;
    UIColor *_placeholderTextColor;
    UIFont *_font;
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self appearance];
    }
    return self;
}
-(id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self appearance];
    }
    return self;
}

- (void)appearance {
    _backgroundColor = [[PBFlatSettings sharedInstance] backgroundColor];
    _mainColor = [[PBFlatSettings sharedInstance] mainColor];
    _placeholderTextColor = [[PBFlatSettings sharedInstance] textFieldPlaceHolderColor];
    _font = [[PBFlatSettings sharedInstance] font];
    
    [self setTextColor:_mainColor];
    [self setFont:_font];
    [self setBorderStyle:UITextBorderStyleNone];    
    [self setBackgroundColor:[[PBFlatSettings sharedInstance] backgroundColor]];
    
}
-(void)drawRect:(CGRect)rect {
    // Drawing code    
    CALayer *layer = self.layer;
    layer.backgroundColor = [[UIColor clearColor] CGColor];
    layer.cornerRadius = 5.0;
    layer.masksToBounds = YES;
    layer.borderWidth = 1.0;
    layer.borderColor = [_placeholderTextColor CGColor];
    [layer setShadowColor: [[UIColor blackColor] CGColor]];
    [layer setShadowOpacity:1];
    [layer setShadowOffset: CGSizeMake(0, 0.0)];
    [layer setShadowRadius:0];
}
- (void)drawPlaceholderInRect:(CGRect)rect {
    [_placeholderTextColor setFill];
    [[self placeholder] drawInRect:rect withFont:_font];
}

- (CGRect)textRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 5 );
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return CGRectInset( bounds , 10 , 5 );
}

@end
