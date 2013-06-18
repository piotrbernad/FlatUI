//
//  PBFlatGroupedStyleCell.m
//  FlatUI
//
//  Created by Piotr Bernad on 18.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatGroupedStyleCell.h"
#import "PBIconDrawning.h"

#define ICON_SIZE 30.0f
#define MIN_PADDING 10.0f
#define MAXIMUM_ACCESSORYVIEW_WIDTH 100.0f
#define ACCESSORY_ICON_SIZE 20.0f

@implementation PBFlatGroupedStyleCell {
    BOOL _lastCell;
    BOOL _firstCell;
}

-(void)awakeFromNib {

    
    _iconImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
    [self.contentView addSubview:_iconImageView];
    
    [self.textLabel setFont:[[PBFlatSettings sharedInstance] font]];
    [self setBackgroundColor:[UIColor whiteColor]];
    [self setSelectionStyle:UITableViewCellSelectionStyleGray];
    
}
-(void)layoutSubviews {
    [super layoutSubviews];

    CGFloat _accesoryWidth = _cellAccessoryView ? CGRectGetWidth(_cellAccessoryView.frame) < MAXIMUM_ACCESSORYVIEW_WIDTH ? CGRectGetWidth(_cellAccessoryView.frame) : MAXIMUM_ACCESSORYVIEW_WIDTH : 0.0f;
    CGFloat _iconSize = _iconImageView.image ? ICON_SIZE + MIN_PADDING : 0.0f;
    
    CGSize _textLabelSize = CGSizeMake(CGRectGetWidth(self.bounds) - _accesoryWidth - _iconSize, CGRectGetHeight(self.bounds));
    CGRect _textLabelRect = CGRectMake(MIN_PADDING + _iconSize, 0, _textLabelSize.width  - 2 *MIN_PADDING, _textLabelSize.height);
    [self.textLabel setFrame:_textLabelRect];
    
    CGRect _iconRect = CGRectMake(MIN_PADDING, 0, ICON_SIZE, ICON_SIZE);
    [_iconImageView setFrame:_iconRect];
    [_iconImageView setCenter:CGPointMake(20.0f, floorf(CGRectGetMidY(self.bounds)))];

    
    CGSize _accessorySize = CGSizeMake(_accesoryWidth, CGRectGetHeight(self.bounds));
    CGRect _accessoryRect = CGRectMake(CGRectGetWidth(self.bounds) - MIN_PADDING - _accesoryWidth, 0, _accessorySize.width, _accessorySize.height);
    [_cellAccessoryView setFrame:_accessoryRect];
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)drawRect:(CGRect)rect
{
    CGRect bounds = self.bounds;
    UIBezierPath *path = [UIBezierPath bezierPathWithRect:bounds];
    
    [[UIColor whiteColor] setFill];
    [path fill];
    
    UIBezierPath *line = [UIBezierPath bezierPath];
    [line moveToPoint:CGPointMake(50.0f, CGRectGetMaxY(rect))];
    [line addLineToPoint:CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))];
    [[[PBFlatSettings sharedInstance] secondColor] setStroke];
    [line stroke];
    
    if (_lastCell) {
        UIBezierPath *bottomline = [UIBezierPath bezierPath];
        [bottomline moveToPoint:CGPointMake(0.0f, CGRectGetMaxY(rect))];
        [bottomline addLineToPoint:CGPointMake(CGRectGetMaxX(rect), CGRectGetMaxY(rect))];
        [[[PBFlatSettings sharedInstance] textFieldPlaceHolderColor] setStroke];
        [bottomline stroke];
    }
    if (_firstCell) {
        UIBezierPath *bottomline = [UIBezierPath bezierPath];
        [bottomline moveToPoint:CGPointMake(0.0f, 0.0f)];
        [bottomline addLineToPoint:CGPointMake(CGRectGetMaxX(rect), 0.0f)];
        [[[PBFlatSettings sharedInstance] textFieldPlaceHolderColor] setStroke];
        [bottomline stroke];
    }
    
}

- (void)setIconImage:(UIImage *)image {
    [_iconImageView setImage:image];
    [_iconImageView setNeedsDisplay];
    [self setNeedsDisplay];
}
- (void)setCellAccessoryView:(UIView *)view {
    if(_cellAccessoryView) {
        [_cellAccessoryView removeFromSuperview];
    }
    _cellAccessoryView = view;
    [self addSubview:_cellAccessoryView];
    [self setNeedsDisplay];
}

- (void)setLastCell:(BOOL)boolValue {
    _lastCell = boolValue;
    [self setNeedsDisplay];
}
- (void)setFirstCell:(BOOL)boolValue {
    _firstCell = boolValue;
    [self setNeedsDisplay];
}
- (void)setIconImageView:(UIImageView *)imageView {
    if(_iconImageView) {
        [_iconImageView removeFromSuperview];
    }
    _iconImageView = imageView;
    [self addSubview:_iconImageView];
    [self setNeedsDisplay];

}

@end
