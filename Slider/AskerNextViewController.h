//
//  AskerNextViewController.h
//  Slider
//
//  Created by Tim Tang on 5/25/13.
//  Copyright (c) 2013 Tim Tang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AskerNextViewController : UIViewController

@property (nonatomic, strong) NSString *question2;
@property (nonatomic, strong) NSString *answer2;
#pragma mark just keep first answer state.
@property (nonatomic, strong) NSString *answer;
@end
