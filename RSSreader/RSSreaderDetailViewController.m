//
//  RSSreaderDetailViewController.m
//  RSSreader
//
//  Created by Jonyzfu on 8/1/14.
//  Copyright (c) 2014 Jonyzfu. All rights reserved.
//

#import "RSSreaderDetailViewController.h"

@interface RSSreaderDetailViewController ()
- (void)configureView;
@end

@implementation RSSreaderDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

}


// Ask the webView to display the content of selected feed.
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Create an NSURL with the string, but escaping those characters that can create problems in an URK. 
    NSURL *myURL = [NSURL URLWithString:[self.url stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    NSURLRequest *request = [NSURLRequest requestWithURL:myURL];
    [self.webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
