//
//  PBFlatRoundedImageView.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatRoundedImageView.h"
#import "PBFlatSettings.h"

@implementation PBFlatRoundedImageView

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.cornerRadius = 50.0f;
    self.layer.borderColor = [[PBFlatSettings sharedInstance] mainColor].CGColor;
    self.layer.borderWidth = 1.0f;
    self.layer.masksToBounds = YES;
}
@end
