//
//  WebViewController.h
//  Algorhythm
//
//  Created by Joshua Motley on 8/6/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <UIKit/UIKit.h>
@class Playlist;
@interface WebViewController : UIViewController


@property (strong, nonatomic) NSString *playlist0artist;
@property (strong, nonatomic) NSURL *youtubeUrl;
@property (strong, nonatomic) IBOutlet UIWebView *webView;

@end
