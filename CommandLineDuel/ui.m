//
//  ui.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/15/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "ui.h"

@implementation ui

//INITIAL OUTPUT
//welcome
-(void)welcome {
    NSLog(@"Welcome to Command Line Duel! \n Please enter your name: \n");
}

//initial greeting
-(void)greeting : (NSString *) playerName : (NSString *) enemyName : (int) enemyHP : (int) playerHP {
    NSLog(@"\n \n Greetings %@ \n \n Today you will be dueling %@. He has %i hitpoints. You have %i. \n Take him down to zero and win, let him hit you to zero and you lose! \n \n Good Luck.", playerName, enemyName, enemyHP, playerHP);
}

//GAME CONDITION OUTPUT
//game win condition
-(void)gameWin : (NSString *) enemyName {
     NSLog(@"\n \n  You have defeated %@!!! You win! \n \n", enemyName);
}

//game lost condition
-(void)gameLose : (NSString *) enemyName {
     NSLog(@"\n \n %@ has killed you.  You lose. \n \n", enemyName);
}

//status updates for in between turns
-(void)status : (int) playerHP : (NSString *) enemyName : (int) enemyHP {
     NSLog(@"\n \n You have %i HP. %@ has %i HP. ", playerHP, enemyName, enemyHP);
}

//MENU OPTIONS AND CHOICES
//main menu options
-(void)mainMenu : (NSString *) enemyName {
     NSLog(@"\n \n  Type '1' if you'd like to take a swing at %@. Type '2' if you'd like to do nothing.\n \n", enemyName);
}

//no choice given, error
-(void)noChoice {
     NSLog(@"You did not choose anything, try again.");
}

//COMBAT SPECIFIC OUTPUT
//player swings
-(void)playerSwing : (NSString *)enemyName : (int)damage {
    NSLog(@"\n \n  You swing at %@ and do %i damage. \n \n", enemyName, damage);
}

//enemy swings
-(void)enemySwing : (NSString *)enemyName : (int)damage {
    NSLog(@"\n \n  %@ swings at you and does %i damage. \n \n", enemyName, damage);
}

//player miss
-(void)playerMiss {
    NSLog(@"You missed! \n");
}

//enemy miss
-(void)enemyMiss : (NSString *) enemyName{
    NSLog(@"%@ missed! \n", enemyName);
}

//critical player hit
-(void)critPlHit : (NSString *)enemyName{
    NSLog(@"You critically hit %@! \n", enemyName);
}

//critical enemy hit
-(void)critEnHit : (NSString *)enemyName{
    NSLog(@"%@ critically hit you! \n", enemyName);
}



@end
