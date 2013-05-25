//
//  AskerViewController.m
//  Slider
//
//  Created by Tim Tang on 5/25/13.
//  Copyright (c) 2013 Tim Tang. All rights reserved.
//

#import "AskerViewController.h"
#import "AskerNextViewController.h"

@interface AskerViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITextField *answerLabel;

@end

@implementation AskerViewController

- (void)viewWillAppear:(BOOL)animated{
    self.questionLabel.text = self.question;
    [self.answerLabel becomeFirstResponder];
}

- (NSString *)answer{
    return  self.answerLabel.text;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"Ask2"]){
        [self goToAsker2:segue];
    }
}

- (IBAction)cancelAsking2:(UIStoryboardSegue *)segue{
    AskerNextViewController *asker2 = segue.sourceViewController;
    NSLog(@"In cancel question2 -> Answer1 result:");
    NSLog(@"%@", asker2.answer);
    self.answerLabel.text = asker2.answer;
    [self.answerLabel reloadInputViews];
}

- (IBAction)goToAsker2:(UIStoryboardSegue *)segue{
    AskerNextViewController *asker2 = segue.destinationViewController;
    asker2.question2 = @"Ask next what do you want?";
    AskerViewController *asker = segue.sourceViewController;
    NSLog(@"%@", asker.answer);
    asker2.answer = asker.answer;
}

@end
