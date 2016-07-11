//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Martin Zhang on 2016-07-11.
//  Copyright © 2016 Martin Zhang. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (void)moveByPan:(UIPanGestureRecognizer *)panSender inView:(UIView *)aView{
    
    CGPoint distancePanned = [panSender translationInView:aView];
    CGRect bounds = aView.bounds;
    bounds.origin.x = bounds.origin.x - distancePanned.x;
    bounds.origin.y = bounds.origin.y - distancePanned.y;

//    bounds.origin = CGPointMake(aView.bounds.origin.x - distancePanned.x, aView.bounds.origin.y - distancePanned.y);

    // check if we're going too far?
    int boundsXAbsoluteValue = fabs(bounds.origin.x);
    int boundsYAbsoluteValue = fabs(bounds.origin.y);
    if (boundsXAbsoluteValue < self.contentSize.width && boundsYAbsoluteValue < self.contentSize.height) {
        NSLog(@"X   %f", aView.bounds.origin.x);
        NSLog(@"Y   %f", aView.bounds.origin.y);
        aView.bounds = bounds;
        [panSender setTranslation:CGPointMake(0, 0) inView:aView];
    } else {
        NSLog(@"You've gone too far.");
    }
    
    


}

@end
