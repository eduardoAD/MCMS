//
//  ViewController.m
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"

@interface ViewController ()
@property NSMutableArray *creatures;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MagicalCreature *pegasusCreature = [[MagicalCreature alloc]init];
    pegasusCreature.name = @"Pegasus";

    MagicalCreature *trollCreature = [[MagicalCreature alloc]init];
    trollCreature.name = @"Troll";

    MagicalCreature *cerberusCreature = [[MagicalCreature alloc]init];
    cerberusCreature.name = @"Cerberus";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
