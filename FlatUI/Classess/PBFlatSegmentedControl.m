//
//  PBFlatSegmentedControl.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatSegmentedControl.h"
#import "PBFlatSettings.h"

@implementation PBFlatSegmentedControl {
    CGRect _rect;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.cornerRadius = 5.0f;
    self.layer.borderWidth = 1.0f;
    self.layer.borderColor = [[PBFlatSettings sharedInstance] mainColor].CGColor;
}
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self apperance];
    }
    return self;
}
- (id)initWithItems:(NSArray *)items {
    self = [super initWithItems:items];
    if (self) {
        [self apperance];
        self.layer.cornerRadius = 5.0f;
        self.layer.borderWidth = 1.0f;
        self.layer.borderColor = [[PBFlatSettings sharedInstance] mainColor].CGColor;
    }
    return self;
}
- (void)layoutSubviews {
    [super layoutSubviews];
    _rect = self.bounds;
}
- (void)apperance {
    // Set background images
    UIImage *normalBackgroundImage = [UIImage imageWithColor:[[PBFlatSettings sharedInstance] mainColor] size:CGSizeMake(10.0f, 40.0f) andRoundSize:5.0f];
    UIImage *selectedBackgroundImage = [UIImage imageWithColor:[UIColor clearColor] size:CGSizeMake(10.0f, 40.0f) andRoundSize:5.0f];
    
    NSDictionary *attributes = @{UITextAttributeFont: [[PBFlatSettings sharedInstance] font],
                                UITextAttributeTextColor: [[PBFlatSettings sharedInstance] mainColor],
                                UITextAttributeTextShadowOffset: [NSValue valueWithUIOffset:UIOffsetZero],
                                UITextAttributeTextShadowColor: [UIColor clearColor]};
    [self setTitleTextAttributes:attributes forState:UIControlStateNormal];
    
    NSDictionary *highlightedAttributes = @{UITextAttributeTextColor: [UIColor whiteColor]};
    [self setTitleTextAttributes:highlightedAttributes forState:UIControlStateHighlighted];
    
    [self setBackgroundImage:selectedBackgroundImage
                    forState:UIControlStateNormal
                  barMetrics:UIBarMetricsDefault];

    [self setBackgroundImage:normalBackgroundImage
                    forState:UIControlStateSelected
                  barMetrics:UIBarMetricsDefault];
    

    [self setDividerImage:[UIImage imageWithColor:[UIColor clearColor]] forLeftSegmentState:UIControlStateNormal rightSegmentState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
}

@end
