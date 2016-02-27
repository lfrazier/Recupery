//
//  SurveyViewController.m
//  Recupery
//
//  Created by Zachary Dorcinville on 2/27/16.
//  Copyright © 2016 Recupery. All rights reserved.
//

#import "SurveyViewController.h"

@interface SurveyViewController ()
@property(nonatomic) IBOutlet UIScrollView *scrollView;
@property(nonatomic) IBOutlet UIView *surveyView;

@end

@implementation SurveyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.scrollView.contentSize = self.surveyView.frame.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
