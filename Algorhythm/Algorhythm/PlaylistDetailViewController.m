//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Joshua Motley on 7/31/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"
#import "WebViewController.h"

@interface PlaylistDetailViewController ()

@end

@implementation PlaylistDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
if(self.playlist)
{
    self.playlistTitle.text = self.playlist.playlistTitle;
    self.playlistCoverImage.image = self.playlist.playlistLargeIcon;
    self.playlistCoverImage.backgroundColor = self.playlist.playlistBackgroundColor;
    self.playlistDescription.text = self.playlist.playlistDescription;
   
    for (NSUInteger index = 0; index< self.playlistLabels.count; index++) {
       
        UILabel *playl = [self.playlistLabels objectAtIndex:index];
        playl.text = self.playlist.playlistArtists[index];
    }
    
 
    
}
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if([segue.identifier isEqualToString:@"showWebView"])
    {
        UILabel *playlistLabel = (UILabel *)[sender view];
        if([self.playlistLabels containsObject:playlistLabel]){
      NSUInteger index = [self.playlistLabels indexOfObject:playlistLabel];
        
        
        WebViewController *wvc = (WebViewController *)segue.destinationViewController;
        NSString *warmup = [self.playlist.playlistArtists[index] stringByReplacingOccurrencesOfString:@" " withString:@""];
            wvc.playlist0artist = [warmup stringByReplacingOccurrencesOfString:@"." withString:@""];
        NSString *youtube = @"http://www.youtube.com/";
        NSString *urlString = [NSString stringWithFormat:@"%@%@", youtube, wvc.playlist0artist];
        NSURL *url = [NSURL URLWithString:urlString];
        NSLog(@"%@", urlString);
        [segue.destinationViewController setYoutubeUrl:url];
    
        }}}

-(IBAction)showWebView:(id)sender{
    [self performSegueWithIdentifier:@"showWebView" sender:sender];
}

@end
