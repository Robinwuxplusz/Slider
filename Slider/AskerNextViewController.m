//
//  AskerNextViewController.m
//  Slider
//
//  Created by Tim Tang on 5/25/13.
//  Copyright (c) 2013 Tim Tang. All rights reserved.
//

#import "AskerNextViewController.h"
#import "AskerViewController.h"

@interface AskerNextViewController ()

@property (weak, nonatomic) IBOutlet UILabel *questionLabel2;

@property (weak, nonatomic) IBOutlet UITextField *answerLabel2;

@end

@implementation AskerNextViewController

@synthesize answer;

- (void)viewWillAppear:(BOOL)animated{
    self.questionLabel2.text = self.question2;
    self.answerLabel2.text = nil;
    [self.answerLabel2 becomeFirstResponder];
}

- (NSString *)answer2{
    return  self.answerLabel2.text;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    [self doneAsking2:segue];
}


- (IBAction)doneAsking2:(UIStoryboardSegue *)segue{
    if([segue.identifier isEqualToString:@"AskDone"]){
        NSLog(@"########Done#######");
        NSLog(@"%@", self.answer);
        NSLog(@"%@", self.answer2);
    }
}

@end
