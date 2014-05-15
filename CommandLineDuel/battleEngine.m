//
//  battleEngine.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/7/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "battleEngine.h"
#import "ui.h"


@implementation battleEngine
int whosTurn;

//function to calculate randomized damage
int damageGen (NSString* enemyName){
    int damageAmt = 0; //random damage amount
    int hitRoll; // roll to hit (THIS SHOULD EVENTUALLY BE ATTRIBUTED TO EQUIPPED WEAPON)
    sranddev();
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    hitRoll = rand() % 20 + 1;
    if (hitRoll <= 5){
        damageAmt = 0;
        if (whosTurn == 1){
            [uiOutput playerMiss];
        } else {
            [uiOutput enemyMiss : enemyName];
        }
    } else if (hitRoll >= 6 && hitRoll <= 18){
        damageAmt = rand() % 5 + 1;
    } else {
        damageAmt = 5 + (rand() % 3 + 1);
        if (whosTurn == 1) {
            [uiOutput critPlHit: enemyName];
        } else {
            [uiOutput critEnHit: enemyName];
        }
    }
    return damageAmt;
} //END OF DAMAGEGEN

-(int)enemyDamHP : (int) enemyHP : (NSString *)enemyName{
    int damage;
    whosTurn = 1;
    damage = damageGen(enemyName);
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    [uiOutput playerSwing:enemyName :damage];
    enemyHP = enemyHP - damage;
    return enemyHP;
}//END OF ENEMYDAMHP

-(int)playerDamHP : (int) playerHP : (NSString *)enemyName{
    int damage;
    whosTurn = 2;
    damage = damageGen(enemyName);
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    [uiOutput enemySwing:enemyName :damage];
    playerHP = playerHP - damage;
    return playerHP;
}//END OF PLAYERDAMHP

@end
