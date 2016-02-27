//
//  RECWarmWelcomeSlideViewController.h
//  Recupery
//
//  Created by Lauren on 2/27/16.
//  Copyright © 2016 Recupery. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RECWarmWelcomeSlideViewController : UIViewController

@property(nonatomic) NSUInteger pageIndex;
@property(nonatomic, copy) NSString *pageTitle;
@property(nonatomic, copy) NSString *subtitle;
@property(nonatomic) UIImage *image;
@property(nonatomic) UIColor *backgroundColor;

@end
