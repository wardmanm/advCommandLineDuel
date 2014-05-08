//
//  player.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/7/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "console.h"
#import "player.h"


@implementation player

-(NSString *)playerName{
    NSString *playerName;
    NSLog(@"Welcome to Command Line Duel! \n Please enter your name: \n");
    playerName = getStringFromConsole();
    return playerName;
}
-(int)playerHP {
    return 10;
}

@end
