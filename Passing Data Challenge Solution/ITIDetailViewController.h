//
//  ITIDetailViewController.h
//  Passing Data Challenge Solution
//
//  Created by yousheng chang on 8/6/14.
//  Copyright (c) 2014 InfoTech Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol ITIDetailViewControllerDelegate <NSObject>
@required
-(void)didUpdateText : (NSString *)text;
@end

@interface ITIDetailViewController : UIViewController <UITabBarControllerDelegate>
@property (weak, nonatomic) id <ITIDetailViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UILabel *message;
@property (strong, nonatomic) NSString *msgString;
@property (strong, nonatomic) IBOutlet UITextField *messageTextField;
- (IBAction)updateButtonPressed:(UIButton *)sender;


@end
