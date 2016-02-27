//
//  RECWarmWelcomeViewController.m
//  Recupery
//
//  Created by Lauren on 2/27/16.
//  Copyright © 2016 Recupery. All rights reserved.
//

#import "RECWarmWelcomeViewController.h"
#import "RECWarmWelcomeSlideViewController.h"

@interface RECWarmWelcomeViewController ()<UIPageViewControllerDataSource>

@property(nonatomic) UIPageViewController *pageViewController;
@property(nonatomic) NSArray *pageTitles;

@end

@implementation RECWarmWelcomeViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  self.pageTitles = @[@"This is The App Guruz",@"This is Table Tennis 3D",@"This is Hide Secrets"];
  self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"RECWarmWelcomeSlideViewController"];
  self.pageViewController.dataSource = self;
  RECWarmWelcomeSlideViewController *startingViewController = [self viewControllerAtIndex:0];
  NSArray *viewControllers = @[startingViewController];
  [self.pageViewController setViewControllers:viewControllers direction:UIPageViewControllerNavigationDirectionForward animated:NO completion:nil];
}

#pragma mark - UIPageViewControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
  NSUInteger index = ((RECWarmWelcomeSlideViewController*) viewController).pageIndex;
  if ((index == 0) || (index == NSNotFound))
  {
    return nil;
  }
  index--;
  return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {

  NSUInteger index = ((RECWarmWelcomeSlideViewController*) viewController).pageIndex;
  if (index == NSNotFound)
  {
    return nil;
  }
  index++;
  if (index == [self.pageTitles count])
  {
    return nil;
  }
  return [self viewControllerAtIndex:index];
}

#pragma mark - Private

- (RECWarmWelcomeSlideViewController *)viewControllerAtIndex:(NSUInteger)index
{
  if (([self.pageTitles count] == 0) || (index >= [self.pageTitles count])) {
    return nil;
  }
  // Create a new view controller and pass suitable data.
  RECWarmWelcomeSlideViewController *pageContentViewController = [[RECWarmWelcomeSlideViewController alloc] init];
  pageContentViewController.pageTitle = self.pageTitles[index];
  pageContentViewController.pageIndex = index;
  return pageContentViewController;
}

@end
