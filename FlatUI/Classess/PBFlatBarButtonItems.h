//
//  PBFlatBarButtonItems.h
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PBFlatSettings.h"
#import "PBIconDrawning.h"
#import "PBBarButtonIconView.h"

@interface PBFlatBarButtonItems : UIBarButtonItem
+ (UIBarButtonItem *)addBarButtonItem;
+ (UIBarButtonItem *)moreBarButtonItem;
+ (UIBarButtonItem *)menuBarButtonItem;
+ (UIBarButtonItem *)searchBarButtonItem;
+ (UIBarButtonItem *)backBarButtonItem;
+ (UIBarButtonItem *)forwardBarButtonItem;

@end