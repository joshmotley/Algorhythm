//
//  Playlist.m
//  Algorhythm
//
//  Created by Joshua Motley on 8/1/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

-(instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if(self){
        
        //initiate an instance library instance then access the array with a local NSArray variable
        
        MusicLibrary *musicLibrary = [[MusicLibrary alloc]init];
        NSArray *library = musicLibrary.library;
        
        // access the music library array's dictionary
        
        NSDictionary *playlistDictionary = library[index];
        
        // Using instance variable because we're in init method
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        
        // store image name as screen in this model first, before accessing it
        
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        
        // then access UIImage and assign it to playlist model's property
        
        _playlistIcon = [UIImage imageNamed:iconName];
        _playlistLargeIcon = [UIImage imageNamed:largeIconName];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _playlistBackgroundColor = [self rgbColorFromDictionary:colorDictionary];
    
        
        // access music library's artist's array using arrayWithArray method
        
        _playlistArtists = [NSArray arrayWithArray:
                            [playlistDictionary objectForKey:kArtists]];
        
    }
    return self;
}

/* initiate this helper method in order to retrieve
the background color from the music library model*/

-(UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary
{
    CGFloat red = [[colorDictionary objectForKey:@"red"]doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"]doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"]doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"]doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
