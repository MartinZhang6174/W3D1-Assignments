//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    // Setting up PageControl
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.frame = CGRectMake(170, 565, 35, 50);
    self.pageControl.pageIndicatorTintColor = [UIColor blackColor];
    self.pageControl.numberOfPages = 3;
    self.pageControl.currentPage = 0;
    [self.view addSubview:self.pageControl];
    
    double firstImageViewX = 0;
    double secondImageViewX = CGRectGetWidth(self.view.frame);
    double thirdImageViewX = CGRectGetWidth(self.view.frame) * 2;
    UIImageView *imageView1 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(firstImageViewX, -self.scrollView.frame.origin.y, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    UIImageView *imageView2 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(secondImageViewX, -self.scrollView.frame.origin.y, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    UIImageView *imageView3 = [[UIImageView alloc]
                               initWithFrame:CGRectMake(thirdImageViewX, -self.scrollView.frame.origin.y, CGRectGetWidth(self.view.frame), CGRectGetHeight(self.view.frame))];
    
    imageView1.image = [UIImage imageNamed:@"Lighthouse-in-Field"];
    imageView2.image = [UIImage imageNamed:@"Lighthouse-night"];
    imageView3.image = [UIImage imageNamed:@"Lighthouse-zoomed"];
    
//    imageView1.backgroundColor = [UIColor redColor];
//    imageView2.backgroundColor = [UIColor blueColor];
//    imageView3.backgroundColor = [UIColor orangeColor];
    
    [self.scrollView addSubview:imageView1];
    [self.scrollView addSubview:imageView2];
    [self.scrollView addSubview:imageView3];
    
    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.frame)*3, CGRectGetHeight(self.view.frame));
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    self.pageControl.currentPage = scrollView.contentOffset.x / scrollView.frame.size.width;
}

- (IBAction)tapGestureRecognized:(id)sender {
    [self performSegueWithIdentifier:@"ShowPhotoDetails" sender:self];
}

@end





