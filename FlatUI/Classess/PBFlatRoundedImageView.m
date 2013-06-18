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
    self.layer.borderColor = [[PBFlatSettings sharedInstance] mainColor].CGColor;
    self.layer.borderWidth = 1.0f;
    self.layer.masksToBounds = YES;
}

-(void)layoutSubviews {
    [super layoutSubviews];
    self.layer.cornerRadius = CGRectGetWidth(self.bounds)/2.0f;
}

+ (PBFlatRoundedImageView *)contactImageViewWithImage:(UIImage *)image {
    PBFlatRoundedImageView *imageView = [[PBFlatRoundedImageView alloc] initWithImage:image];
    imageView.layer.masksToBounds = YES;
    return imageView;
}


@end
