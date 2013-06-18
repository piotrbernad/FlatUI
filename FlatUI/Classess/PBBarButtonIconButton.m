//
//  PBBarButtonIconButton.m
//  FlatUI
//
//  Created by Piotr Bernad on 16.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBBarButtonIconButton.h"
#import "PBFlatSettings.h"

@implementation PBBarButtonIconButton {
    PBFlatIconType _type;
}
-(id)initWithFrame:(CGRect)frame andWithType:(PBFlatIconType)type {
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor clearColor]];
        _type = type;
    }
    return self;
}
-(void)drawRect:(CGRect)rect {
    [PBIconDrawning drawIconInRect:rect withType:_type color:[[PBFlatSettings sharedInstance] mainColor]];
    
}
- (void)setType:(PBFlatIconType)type {
    _type = type;
    [self setNeedsDisplay];
}

@end
