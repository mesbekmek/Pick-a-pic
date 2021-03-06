//
//  ViewController.m
//  PartTwo
//
//  Created by Michael Kavouras on 9/13/15.
//  Copyright © 2015 Mike Kavouras. All rights reserved.
//

#import "ViewController.h"
#import "SocialMediaView.h"
#import "SocialMediaViewDelegate.h"

@interface ViewController () <SocialMediaViewDelegate>


@property (strong, nonatomic) IBOutlet SocialMediaView *socialMediaView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.socialMediaView.delegate = self;
}

#pragma mark - Social Media View delegate methods

- (void)socialMediaViewDidTapCommentButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)socialMediaViewDidTapLikeButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)socialMediaViewDidTapShareButton:(SocialMediaView *)view{
    self.view.backgroundColor = [UIColor redColor];
}


@end
