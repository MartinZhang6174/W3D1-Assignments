//
//  SecondaryViewController.h
//  ScrollView Image Galleries
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondaryViewController : UIViewController <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollingViewOutlet;
@property (strong, nonatomic) IBOutlet UIImageView *imageViewOutlet;

@end
