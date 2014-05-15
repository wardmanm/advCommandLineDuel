//
//  ui.h
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/15/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ui : NSObject

//initial output
-(void)welcome;
-(void)greeting : (NSString *) playerName : (NSString *) enemyName : (int) enemyHP : (int) playerHP;

//game conditions
-(void)gameWin : (NSString *) enemyName;
-(void)gameLose : (NSString *) enemyName;
-(void)status : (int) playerHP : (NSString *) enemyName : (int) enemyHP;

//menu options
-(void)mainMenu : (NSString *) enemyName;
-(void)noChoice;

//combat specific
-(void)playerSwing : (NSString *)enemyName : (int)damage;
-(void)enemySwing : (NSString *)enemyName : (int)damage;
-(void)playerMiss;
-(void)enemyMiss : (NSString *) enemyName;
-(void)critPlHit : (NSString *)enemyName;
-(void)critEnHit : (NSString *)enemyName;

@end
