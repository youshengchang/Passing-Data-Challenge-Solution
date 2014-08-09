//
//  ITIViewController.h
//  Passing Data Challenge Solution
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ITIDetailViewController.h"

@interface ITIViewController : UIViewController <ITIDetailViewControllerDelegate, UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *sendMessage;
- (IBAction)buttonPressed:(UIButton *)sender;

@end
