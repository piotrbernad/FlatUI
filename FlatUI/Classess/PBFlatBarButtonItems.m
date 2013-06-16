//
//  PBFlatBarButtonItems.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatBarButtonItems.h"


@implementation PBFlatBarButtonItems

+ (UIBarButtonItem *)barButtonItemWithIconType:(PBFlatIconType)iconType {
    UIBarButtonItem *_barButtonItem = [[UIBarButtonItem alloc] initWithCustomView:[[PBBarButtonIconView alloc] initWithFrame:CGRectMake(0, 0, 30, 30) andWithType:iconType]];
    return _barButtonItem;
}

+ (UIBarButtonItem *)addBarButtonItem {
   return [self barButtonItemWithIconType:PBFlatIconAdd];
}
+ (UIBarButtonItem *)moreBarButtonItem {
    return [self barButtonItemWithIconType:PBFlatIconMore];
}
+ (UIBarButtonItem *)menuBarButtonItem {
    return [self barButtonItemWithIconType:PBFlatIconMenu];
}
+ (UIBarButtonItem *)searchBarButtonItem {
    return [self barButtonItemWithIconType:PBFlatIconSearch];
}
+ (UIBarButtonItem *)backBarButtonItem {
    return [self barButtonItemWithIconType:PBFlatIconBack];
}
+ (UIBarButtonItem *)forwardBarButtonItem {
    return [self barButtonItemWithIconType:PBFlatIconForward];
}

@end
