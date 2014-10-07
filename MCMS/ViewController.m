//
//  ViewController.m
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *pegasusCreature = [[MagicalCreature alloc]init];
    pegasusCreature.name = @"Pegasus";

    MagicalCreature *trollCreature = [[MagicalCreature alloc]init];
    trollCreature.name = @"troll";

    MagicalCreature *cerberusCreature = [[MagicalCreature alloc]init];
    cerberusCreature.name = @"Cerberus";

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

    return cell;
}
- (IBAction)onAddButtonPressed:(id)sender {
    if (![self.creatureTextField.text isEqualToString:@""]) {
        MagicalCreature *creature = [[MagicalCreature alloc] init];
        creature.name = [self.creatureTextField text];

        [self.creatures addObject:creature];

        self.creatureTextField.text = @"";
        [self.myTableView reloadData];
    }
}


@end
