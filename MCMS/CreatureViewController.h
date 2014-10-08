//
//  CreatureViewController.h
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MagicalCreature.h"

@interface CreatureViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *creatureLabel;
@property (strong, nonatomic) IBOutlet UITextField *creatureText;
@property (strong, nonatomic) IBOutlet UILabel *detailLabel;
@property (strong, nonatomic) IBOutlet UITextField *detailText;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) IBOutlet UITableView *accesoriesTableView;

@property (strong, nonatomic) MagicalCreature *creature;
@property BOOL editButtonToggled;

@end
