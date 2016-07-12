//
//  SecondaryViewController.m
//  ScrollView Image Galleries
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "SecondaryViewController.h"

@implementation SecondaryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.scrollingViewOutlet.maximumZoomScale = 3.0;
    self.scrollingViewOutlet.minimumZoomScale = 1.0;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.imageViewOutlet;
}


@end
