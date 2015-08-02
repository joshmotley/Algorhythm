    //
//  PlaylistDetailViewController.h
//  Algorhythm
//
//  Created by Joshua Motley on 7/31/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Playlist;

@interface PlaylistDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *buttonPressLabel;
@property (strong, nonatomic) Playlist *playlist;


@end
