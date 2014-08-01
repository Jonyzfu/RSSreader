//
//  RSSreaderDetailViewController.h
//  RSSreader
//
//  Created by Jonyzfu on 8/1/14.
//  Copyright (c) 2014 Jonyzfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSSreaderDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) IBOutlet UIWebView *webView;
@property (copy, nonatomic) NSString *url;

@end
