//
//  Playlist.h
//  Algorhythm
//
//  Created by Joshua Motley on 8/1/15.
//  Copyright (c) 2015 TeamTreeHouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (strong, nonatomic) NSString *playlistTitle;
@property (strong, nonatomic) NSString *playlistDescription;
@property (strong, nonatomic) UIImage *playlistIcon;
@property (strong, nonatomic) UIImage *playlistLargeIcon;
@property (strong, nonatomic) NSArray *playlistArtists;
@property (strong, nonatomic) UIColor *playlistBackgroundColor;

-(instancetype)initWithIndex:(NSUInteger)index;

@end
