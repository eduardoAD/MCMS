//
//  ViewController.m
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *pegasusCreature = [[MagicalCreature alloc]init];
    pegasusCreature.name = @"Pegasus";
    pegasusCreature.detail = @"Air";
    pegasusCreature.image = [UIImage imageNamed:@"pegasus"];

    MagicalCreature *trollCreature = [[MagicalCreature alloc]init];
    trollCreature.name = @"troll";
    trollCreature.detail = @"Earth";
    trollCreature.image = [UIImage imageNamed:@"troll"];

    MagicalCreature *cerberusCreature = [[MagicalCreature alloc]init];
    cerberusCreature.name = @"Cerberus";
    cerberusCreature.detail = @"Inferno";
    cerberusCreature.image = [UIImage imageNamed:@"cerberus"];

    self.creatures = [[NSMutableArray alloc] initWithObjects:pegasusCreature, trollCreature, cerberusCreature, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"creatureCellID" forIndexPath:indexPath];

    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    cell.detailTextLabel.text = creature.detail;

    return cell;
}

- (IBAction)onAddButtonPressed:(id)sender {
    if (![self.creatureTextField.text isEqualToString:@""]) {
        MagicalCreature *creature = [[MagicalCreature alloc] init];
        creature.name = [self.creatureTextField text];
        creature.detail = @"none";
        creature.image = [UIImage imageNamed:@"creature"];

        [self.creatures addObject:creature];

        self.creatureTextField.text = @"";
        [self.myTableView reloadData];
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ShowCreatureSegue"] ) {
        CreatureViewController *destinationViewController = segue.destinationViewController;

        NSIndexPath *indexPath = [self.myTableView indexPathForSelectedRow];
        MagicalCreature *creatureSelected = [self.creatures objectAtIndex:indexPath.row];

        destinationViewController.creature = creatureSelected;
    }
}

- (void)didMoveToParentViewController:(UIViewController *)parent{
    [self.myTableView reloadData];
}
@end
