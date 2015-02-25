//
//  StepsTableViewController.m
//  Timer
//
//  Created by Ben Gohlke on 2/25/15.
//  Copyright (c) 2015 The Iron Yard. All rights reserved.
//

#import "StepsTableViewController.h"

@interface StepsTableViewController ()
{
    NSMutableArray *steps;
}

- (IBAction)addStep:(UIBarButtonItem *)sender;

@end

@implementation StepsTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    steps = [[NSMutableArray alloc] init];
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addStep:)];
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
    return [steps count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StepCell" forIndexPath:indexPath];
    
    
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - Action Handlers

- (IBAction)addStep:(UIBarButtonItem *)sender
{
    
}

@end
