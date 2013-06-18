//
//  PBFlatGroupedTableViewController.m
//  FlatUI
//
//  Created by Piotr Bernad on 17.06.2013.
//  Copyright (c) 2013 Piotr Bernad. All rights reserved.
//

#import "PBFlatGroupedTableViewController.h"

@interface PBFlatGroupedTableViewController ()

@end

@implementation PBFlatGroupedTableViewController

-(void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setBackBarItem];
    [self apperanceBackground];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

- (void)setBackBarItem {
    // Override this method if needed
    UIBarButtonItem *back = [PBFlatBarButtonItems backBarButtonItemWithTarget:self selector:@selector(back:)];
    [back setTarget:self];
    [back setAction:@selector(backAction)];
    [self.navigationItem setLeftBarButtonItem:back];
}

- (void)back:(UIBarButtonItem *)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)apperanceBackground {
    UIView *_backgroundview = [[UIView alloc] initWithFrame:self.view.bounds];
    [_backgroundview setBackgroundColor:[[PBFlatSettings sharedInstance] secondColor]];
    [self.tableView setBackgroundView:_backgroundview];
}

#pragma mark -TableView Delagate & Data Source

- (PBFlatGroupedStyleCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"Cell";
    PBFlatGroupedStyleCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell = [[PBFlatGroupedStyleCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    [cell setFirstCell:NO];
    [cell setLastCell:NO];
    
    if(indexPath.row == 0) {
        [cell setFirstCell:YES];
    } else if (indexPath.row == [self.tableView numberOfRowsInSection:indexPath.section] - 1) {
        [cell setLastCell:YES];
    }
    [self configureCell:cell forIndexPath:indexPath];
    
    return cell;
}
- (void)configureCell:(UITableViewCell *)cell forIndexPath:(NSIndexPath *)indexPath {
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 30.0f;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *__view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.view.bounds), 30.0f)];
    [__view setBackgroundColor:[UIColor clearColor]];
    return __view;
}

@end
