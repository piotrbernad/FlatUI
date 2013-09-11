//
//  PBExampleTableVC.m
//  FlatUI
//
//  Created by Piotr Bernad on 17.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBExampleTableVC.h"
#import "PBFlatSettings.h"
#import "PBIconDrawning.h"
#import "PBFlatRoundedImageView.h"

@implementation PBExampleTableVC
-(void)awakeFromNib {
    [super awakeFromNib];
    [self setTitle:@"Settings"];
}

-(void)viewDidLoad {
    [super viewDidLoad];

}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

-(void)configureCell:(PBFlatGroupedStyleCell *)cell forIndexPath:(NSIndexPath *)indexPath {
    NSInteger section = indexPath.section;
    NSInteger index = 3*section + indexPath.row;
    
    [cell.textLabel setText:[[self exampleTitles] objectAtIndex:index]];
    
    

    [cell setIconImage:[[self exampleIcons] objectAtIndex:index]];
    [cell setCellAccessoryView:[self exampleAccessoryViewForIndexPath:indexPath]];
    
    if (section == 2) {
        
        switch (indexPath.row) {
            case 0: {
                [cell setIconImageView:[PBFlatRoundedImageView contactImageViewWithImage:[UIImage imageNamed:@"js"]]];
                break;
            }
            case 1: {

                [cell setIconImageView:[PBFlatRoundedImageView contactImageViewWithImage:[UIImage imageNamed:@"tl"]]];
                break;
            }
            case 2: {

                [cell setIconImageView:[PBFlatRoundedImageView contactImageViewWithImage:[UIImage imageNamed:@"cn"]]];
                break;
            }
            default:
                break;
        }
    
    }

}
-(NSArray *)exampleTitles {
    return @[@"Airplane Mode",
             @"Wi-Fi",
             @"Bluetooth",
             @"NotificationCenter",
             @"Control Center",
             @"Do Not Disturb",
             @"Jon Snow",
             @"Tyrion Lannister",
             @"Chuck Norris"];
}
-(NSArray *)exampleIcons {
    return @[[UIImage imageNamed:@"airplane"],
             [UIImage imageNamed:@"wifi"],
             [UIImage imageNamed:@"bluetooth"],
             [UIImage imageNamed:@"notification"],
             [UIImage imageNamed:@"block"],
             [UIImage imageNamed:@"donotdisturb"],
             [UIImage imageNamed:@"general"],
             [UIImage imageNamed:@"sounds"],
             [UIImage imageNamed:@"brightness"]];
}

- (UIView *)exampleAccessoryViewForIndexPath:(NSIndexPath *)indexPath {

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
    [label setTextColor:[UIColor darkGrayColor]];
    [label setFont:[[[PBFlatSettings sharedInstance] font] fontWithSize:12.0f]];
    [label setBackgroundColor:[UIColor clearColor]];
    
    switch (indexPath.section) {
        case 1:
        {
            if(indexPath.row == 1) {
                [label setText:@"On"];
            } else {
                [label setText:@"Off"];
            }
            [label setFrame:[label textRectForBounds:CGRectMake(0, 0, 90, 45) limitedToNumberOfLines:1]];
            break;
        }
        case 2:{
            [label setText:@"iPhone"];
            if(indexPath.row == 1) {
                [label setText:@"Home"];
            }
            [label setFrame:[label textRectForBounds:CGRectMake(0, 0, 90, 45) limitedToNumberOfLines:1]];
            break;
        }
        default: {
            [label setText:@"Additional"];
            [label setFrame:[label textRectForBounds:CGRectMake(0, 0, 90, 45) limitedToNumberOfLines:1]];
            break;
        }
    }
   return label;
}
@end
