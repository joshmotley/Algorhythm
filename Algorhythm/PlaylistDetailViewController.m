//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Joshua Motley on 7/31/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
if(self.playlist)
{
    self.buttonPressLabel.text = self.playlist.playlistTitle;
}
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
