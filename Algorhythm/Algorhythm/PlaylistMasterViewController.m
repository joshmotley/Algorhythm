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
    
    
    for (NSUInteger index = 0; index< self.playlistImageViews.count; index ++) {
        Playlist *playlist = [[Playlist alloc]initWithIndex:index];
        UIImageView *playlistImageView = self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.playlistBackgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    UIImageView *playlistImageView = (UIImageView *)[sender view];
    
    if ([self.playlistImageViews containsObject:playlistImageView]) {
        NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
        
        PlaylistDetailViewController *playlistViewController = (PlaylistDetailViewController *)segue.destinationViewController;
        playlistViewController.playlist = [[Playlist alloc]initWithIndex:index];
    }
    
    
        
  
    
}


- (IBAction)showPlaylistDetail:(id)sender {
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}
















@end