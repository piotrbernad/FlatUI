//
//  PBViewController.m
//  FlatUIlikeiOS7
//
//  Created by Piotr Bernad on 11.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBViewController.h"
#import "PBFlatBarButtonItems.h"
@interface PBViewController ()

@end

@implementation PBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:0.97f green:0.97f blue:0.97f alpha:1.00f]];
    
    [self.navigationItem setRightBarButtonItem:[PBFlatBarButtonItems addBarButtonItemWithTarget:nil selector:nil]];
    [self.navigationItem setLeftBarButtonItem:[PBFlatBarButtonItems moreBarButtonItemWithTarget:self selector:@selector(showLeftMenu:)]];
    

    [_textField setDelegate:self];
    
    [_back setType:PBFlatIconBack];
    [_forward setType:PBFlatIconForward];
    [_menu setType:PBFlatIconMenu];
    [_search setType:PBFlatIconSearch];
    
}

-(void)showLeftMenu:(UIBarButtonItem *)sender {
    [self performSegueWithIdentifier:@"leftMenu" sender:sender];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

@end
