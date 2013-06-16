//
//  PBViewController.h
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PBFlatTextfield.h"
#import "PBFlatButtonWithIcon.h"

@interface PBViewController : UIViewController <UITextFieldDelegate>

@property (strong, nonatomic) IBOutlet PBFlatButtonWithIcon *menu;
@property (strong, nonatomic) IBOutlet PBFlatButtonWithIcon *search;
@property (strong, nonatomic) IBOutlet PBFlatButtonWithIcon *forward;
@property (strong, nonatomic) IBOutlet PBFlatButtonWithIcon *back;
@property (strong, nonatomic) IBOutlet PBFlatTextfield *textField;

@end
