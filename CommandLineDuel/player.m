//
//  player.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/7/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "console.h"
#import "player.h"
#import "ui.h"


@implementation player

-(NSString *)playerName{
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    NSString *playerName;
    [uiOutput welcome];
    playerName = getStringFromConsole();
    return playerName;
}
-(int)playerHP {
    return 10;
}

@end
