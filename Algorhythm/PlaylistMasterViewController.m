//
//  ViewController.m
//  Algorhythm
//
//  Created by Joshua Motley on 7/31/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Playlist *playlist = [[Playlist alloc]initWithIndex:0];
    self.playlistImageView0.image = playlist.playlistIcon;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        PlaylistDetailViewController *playlistViewController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistViewController.playlist = [[Playlist alloc]initWithIndex:0];
       
    }
}


- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
















@end
