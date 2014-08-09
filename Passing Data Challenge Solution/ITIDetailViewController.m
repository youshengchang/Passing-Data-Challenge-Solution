//
//  ITIDetailViewController.m
//  Passing Data Challenge Solution
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIDetailViewController.h"

@interface ITIDetailViewController ()

@end

@implementation ITIDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSLog(@"get: %@", self.msgString);
    self.message.text = self.msgString;
    self.messageTextField.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)updateButtonPressed:(UIButton *)sender {
    [self.messageTextField resignFirstResponder];
    self.message.text = self.messageTextField.text;
    [self.delegate didUpdateText: self.messageTextField.text];
    
    
}
-(BOOL)textFieldShouldReturn: (UITextField *)textField
{
    NSLog(@"textFieldShouldReturn tapped.");
    [textField resignFirstResponder];
    self.message.text = textField.text;
    [self.delegate didUpdateText:textField.text];
    
    return YES;
}
@end
