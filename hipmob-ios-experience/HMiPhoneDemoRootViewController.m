//
//  HMViewController.m
//  hipmob-ios-experience
//
//  Created by Olufemi Omojola on 1/8/14.
//  Copyright (c) 2014 Orthogonal Labs, Inc. All rights reserved.
//

#import "HMiPhoneDemoRootViewController.h"

@interface HMiPhoneDemoRootViewController ()
@property (nonatomic, strong) NSMutableArray *menuItems;
@end

@implementation HMiPhoneDemoRootViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _menuItems = [[NSMutableArray alloc] initWithCapacity:1];
    
    // add the help desk options
//    [_menuItems addObject:@"helpdesk"];
    
    // add the article view options
//    [_menuItems addObject:@"articleview"];
    
    // add the live chat options
    [_menuItems addObject:@"livechat"];
    
    self.navigationItem.hidesBackButton = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.navigationController.toolbarHidden = YES;
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.menuItems count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * CellIdentifier = [self.menuItems objectAtIndex:indexPath.row];
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)tableCell forRowAtIndexPath:(NSIndexPath *)indexPath
{
}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 1;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * opt = (NSString *)[self.menuItems objectAtIndex:[indexPath row]];
//    if([@"helpdesk" isEqualToString:opt]){
//        [self performSegueWithIdentifier:@"helpdeskoptions" sender:self];
//    }else if([@"articleview" isEqualToString:opt]){
//        [self performSegueWithIdentifier:@"articleviewoptions" sender:self];
//    }
    if([@"livechat" isEqualToString:opt]){
        [self performSegueWithIdentifier:@"livechatoptions" sender:self];
    }
}
@end
