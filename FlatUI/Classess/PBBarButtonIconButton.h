//
//  PBBarButtonIconButton.h
//  FlatUI
//
//  Created by Piotr Bernad on 16.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PBIconDrawning.h"

@interface PBBarButtonIconButton : UIButton
- (id)initWithFrame:(CGRect)frame andWithType:(PBFlatIconType)type;
- (void)setType:(PBFlatIconType)type;
@end
