//
//  SliderViewController.m
//  Slider
//
//  Created by Tim Tang on 5/25/13.
//  Copyright (c) 2013 Tim Tang. All rights reserved.
//

#import "SliderViewController.h"
#import "AskerViewController.h"
#import "AskerNextViewController.h"

@interface SliderViewController ()

@end

@implementation SliderViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"Ask"]){
        AskerViewController *asker = segue.destinationViewController;
        asker.question = @"Ask what do you want?";
    }
}

- (IBAction)cancelAsking:(UIStoryboardSegue *)segue{
    AskerViewController *asker = segue.sourceViewController;
    NSLog(@"In cancel question1");
    NSLog(@"%@", asker.answer);
    
}


@end
