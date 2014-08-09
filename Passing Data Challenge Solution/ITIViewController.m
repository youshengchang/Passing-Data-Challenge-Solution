//
//  ITIViewController.m
//  Passing Data Challenge Solution
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import "ITIViewController.h"
#import "ITIDetailViewController.h"

@interface ITIViewController ()

@end

@implementation ITIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.sendMessage.delegate = self;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSLog(@"sender is %@", sender);
    NSLog(@"seque is %@",segue);
    
    if([sender isKindOfClass:[UIButton class]]){
        /*
        if([segue.destinationViewController isKindOfClass:[ITIDetailViewController class]]){
            ITIDetailViewController *nextViewController = segue.destinationViewController;
            
            nextViewController.msgString = self.sendMessage.text;
            
        }
         */
        if([segue.identifier isEqualToString:@"detailViewSegue"]){
            ITIDetailViewController *nextViewController = segue.destinationViewController;
            
            nextViewController.msgString = self.sendMessage.text;
            nextViewController.delegate = self;

        }
    }
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    [self.sendMessage resignFirstResponder];
}

-(void)didUpdateText:(NSString *)text
{
    NSLog(@"from detail text: %@",text);
    self.sendMessage.text = text;
   // [self dismissViewControllerAnimated:YES completion:nil];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.sendMessage resignFirstResponder];
    
    return YES;
}
@end
