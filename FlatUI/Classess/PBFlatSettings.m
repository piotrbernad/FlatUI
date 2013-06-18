//
//  PBFlatSettings.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatSettings.h"
#import "PBFlatSegmentedControl.h"

@implementation PBFlatSettings

+ (PBFlatSettings *)sharedInstance
{
    static dispatch_once_t once;
    static PBFlatSettings *sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[PBFlatSettings alloc] init];
    });
    return sharedInstance;
}
- (id)init {
    self = [super init];
    if (self) {
        _mainColor = [UIColor colorWithRed:0.35f green:0.51f blue:0.91f alpha:1.00f];
        _backgroundColor = [UIColor whiteColor];
        _textFieldPlaceHolderColor = [UIColor colorWithRed:0.80f green:0.80f blue:0.80f alpha:1.00f];
        _secondColor = [UIColor colorWithRed:0.94f green:0.94f blue:0.94f alpha:1.00f];
        _font = [UIFont fontWithName:@"HelveticaNeue-Light" size:15];
        _iconImageColor = [UIColor whiteColor];
    }
    return self;
}

- (void)navigationBarApperance {
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageWithColor:[UIColor whiteColor]] forBarMetrics:UIBarMetricsDefault];
    
    NSDictionary *_titleTextAttributes = @{UITextAttributeTextColor: [UIColor blackColor],
                                    UITextAttributeTextShadowColor : [UIColor clearColor],
                                            UITextAttributeFont : [_font fontWithSize:20.0f]};
    
    [[UINavigationBar appearance] setTitleTextAttributes:_titleTextAttributes];
    // remove shadow
    [[UINavigationBar appearance]setShadowImage:[UIImage imageWithColor:_textFieldPlaceHolderColor]];
}
@end
