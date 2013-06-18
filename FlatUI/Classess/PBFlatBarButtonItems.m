//
//  PBFlatBarButtonItems.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatBarButtonItems.h"
#import "PBFlatButtonWithIcon.h"
#import "PBBarButtonIconButton.h"

@implementation PBFlatBarButtonItems

+ (UIBarButtonItem *)barButtonItemWithIconType:(PBFlatIconType)iconType withTarget:(id)target selector:(SEL)selector {

    PBBarButtonIconButton *button = [[PBBarButtonIconButton alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
    [button addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    [button setType:iconType];
    
    UIBarButtonItem *_barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    return _barButtonItem;
}

+ (UIBarButtonItem *)addBarButtonItemWithTarget:(id)target selector:(SEL)selector {
   return [self barButtonItemWithIconType:PBFlatIconAdd withTarget:target selector:selector];
}
+ (UIBarButtonItem *)moreBarButtonItemWithTarget:(id)target selector:(SEL)selector {
    return [self barButtonItemWithIconType:PBFlatIconMore withTarget:target selector:selector];
}
+ (UIBarButtonItem *)menuBarButtonItemWithTarget:(id)target selector:(SEL)selector {
    return [self barButtonItemWithIconType:PBFlatIconMenu withTarget:target selector:selector];
}
+ (UIBarButtonItem *)searchBarButtonItemWithTarget:(id)target selector:(SEL)selector {
    return [self barButtonItemWithIconType:PBFlatIconSearch withTarget:target selector:selector];
}
+ (UIBarButtonItem *)backBarButtonItemWithTarget:(id)target selector:(SEL)selector {
    return [self barButtonItemWithIconType:PBFlatIconBack withTarget:target selector:selector];
}
+ (UIBarButtonItem *)forwardBarButtonItemWithTarget:(id)target selector:(SEL)selector {
    return [self barButtonItemWithIconType:PBFlatIconForward withTarget:target selector:selector];
}

@end
