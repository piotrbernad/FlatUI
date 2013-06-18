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
#import "PBBarButtonIconButton.h"

@interface PBFlatBarButtonItems : UIBarButtonItem
+ (UIBarButtonItem *)addBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (UIBarButtonItem *)moreBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (UIBarButtonItem *)menuBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (UIBarButtonItem *)searchBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (UIBarButtonItem *)backBarButtonItemWithTarget:(id)target selector:(SEL)selector;
+ (UIBarButtonItem *)forwardBarButtonItemWithTarget:(id)target selector:(SEL)selector;
@end