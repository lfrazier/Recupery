//
//  RECWarmWelcomeSlideViewController.m
//  Recupery
//
//  Created by Lauren on 2/27/16.
//  Copyright © 2016 Recupery. All rights reserved.
//

#import "RECWarmWelcomeSlideViewController.h"

@interface RECWarmWelcomeSlideViewController ()

@property(nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation RECWarmWelcomeSlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)setPageTitle:(NSString *)pageTitle {
  self.titleLabel.text = pageTitle;
}

@end
