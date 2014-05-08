//
//  battleEngine.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/7/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "battleEngine.h"


@implementation battleEngine

//function to calculate randomized damage
-(int) damageGen{
    int damageAmt = 0; //random damage amount
    sranddev();
    damageAmt = rand() % 5 + 1;
    return damageAmt;
    
} //END OF DAMAGEGEN

//-(int)enemyDamHP : (int) enemyHP : (NSString *)enemyName{
//    int damage;
//    damage = damageGen(damage);
//    
//    NSLog(@"\n \n  You swing at %@ and do %i damage. \n \n", enemyName, damage);
//    enemyHP = enemyHP - damage;
//    return enemyHP;
//}//END OF ENEMYDAMHP

@end
