//
//  CreatureViewController.h
//  MCMS
//
//  Created by Eduardo Alvarado Díaz on 10/7/14.
//  Copyright (c) 2014 Globant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatureViewController : UIViewController

@property (strong, nonatomic) NSString *creatureString;
@property (strong, nonatomic) IBOutlet UILabel *creatureLabel;
@property (strong, nonatomic) IBOutlet UITextField *creatureText;

@end
