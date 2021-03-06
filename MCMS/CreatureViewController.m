//
//  CreatureViewController.m
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.creatureLabel.text = self.creature.name;
    self.creatureText.text = self.creature.name;
    self.creatureText.hidden = YES;

    self.detailLabel.text = self.creature.detail;
    self.detailText.text = self.creature.detail;
    self.detailText.hidden = YES;

    self.editButtonToggled = NO;
    self.imageView.image = self.creature.image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onEditButtonPressed:(id)sender {
    if (!self.editButtonToggled) {
        [sender setTitle:@"Done" forState:UIControlStateNormal];
        self.editButtonToggled = YES;

        self.creatureLabel.hidden = YES;
        self.creatureText.hidden = NO;

        self.detailLabel.hidden = YES;
        self.detailText.hidden = NO;
    }else{
        [sender setTitle:@"Edit" forState:UIControlStateNormal];
        self.editButtonToggled = NO;

        self.creatureLabel.hidden = NO;
        self.creatureLabel.text = self.creatureText.text;
        self.creature.name = self.creatureText.text;

        self.detailLabel.hidden = NO;
        self.detailLabel.text = self.detailText.text;
        self.creature.detail = self.detailText.text;

        self.creatureText.hidden = YES;
        self.detailText.hidden = YES;
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creature.accesories.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"accesorieCellID" forIndexPath:indexPath];

    cell.textLabel.text = [self.creature.accesories objectAtIndex:indexPath.row];

    return cell;
}

@end
