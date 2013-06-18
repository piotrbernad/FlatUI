//
//  PBFlatGroupedStyleCell.h
//  FlatUI
//
//  Created by Piotr Bernad on 18.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PBFlatSettings.h"

@interface PBFlatGroupedStyleCell : UITableViewCell {

    UIImageView *_iconImageView;
    UIView *_cellAccessoryView;
}
- (void)setIconImage:(UIImage *)image;
- (void)setCellAccessoryView:(UIView *)view;
- (void)setLastCell:(BOOL)boolValue;
- (void)setFirstCell:(BOOL)boolValue;
- (void)setIconImageView:(UIImageView *)imageView;
@end
