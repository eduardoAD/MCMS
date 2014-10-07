//
//  CreatureViewController.m
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.creatureLabel.text = self.creatureString;
    self.creatureText.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
