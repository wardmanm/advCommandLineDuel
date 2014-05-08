//
//  main.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 4/30/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <math.h>
#import "console.h"
#import "enemies.h"
#import "player.h"
#import "battleEngine.h"

//global variable declaration
//player information
NSString *playerName; // player name
int playerHP; // player hitpoints

//enemy information
NSString *enemyName; // enemy name
int enemyHP; // enemy hitpoints

//other variables
bool gameOver = false; // is the game over?

int damage;
battleEngine *damageGen;


//function called when player takes a swing
void playerSwing(void){
    damageGen = [[battleEngine alloc] init];
    damage = damageGen.damageGen;
    NSLog(@"\n \n  You swing at %@ and do %i damage. \n \n", enemyName, damage);
    enemyHP = enemyHP - damage;
    if (enemyHP <= 0){
        NSLog(@"\n \n  You have defeated %@!!! You win! \n \n", enemyName);
        gameOver = true;
    } else {
        damage = damageGen.damageGen;
        NSLog(@"\n \n %@ swings back and hits you for %i damage. \n \n", enemyName, damage);
        playerHP = playerHP - damage;
        if (playerHP <= 0){
            NSLog(@"\n \n %@ has killed you.  You lose. \n \n", enemyName);
            gameOver = true;
        }
    }
}//END OF PLAYERSWING

//function called when player does nothing
void doNothing(void){
    damageGen = [[battleEngine alloc] init];
    damage = damageGen.damageGen;
    NSLog(@"\n \n You stand there staring into space. \n \n %@ swings and hits you for %i damage. \n \n", enemyName, damage);
    playerHP = playerHP - damage;
    if (playerHP <= 0){
        NSLog(@"\n \n %@ has killed you.  You lose. \n \n", enemyName);
        gameOver = true;
    }
}// END OF DO NOTHING

//Main function
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //calls classes to set up game
        //generated enemy information
        enemies *enemy;
        enemy = [[enemies alloc] init];
        enemyName = enemy.enemyName;
        enemyHP = enemy.enemyHP;
        
        //generated player information
        player *playerInfo;
        playerInfo = [[player alloc] init];
        playerName = playerInfo.playerName;
        playerHP = playerInfo.playerHP;
        
        //Initial Greeting
        NSLog(@"\n \n Greetings %@ \n \n Today you will be dueling %@. He has %i hitpoints. You have %i. \n Take him down to zero and win, let him hit you to zero and you lose! \n \n Good Luck.", playerName, enemyName, enemyHP, playerHP);
        
        // the main while loop that will continue until player wins or loses
        while (!gameOver) {
            int playerChoice = 0; // loop variable to log player choice
            
            NSLog(@"\n \n You have %i HP. %@ has %i HP. ", playerHP, enemyName, enemyHP);
            NSLog(@"\n \n  Type '1' if you'd like to take a swing at %@. Type '2' if you'd like to do nothing.\n \n", enemyName);
            
            // main section of the game, logs player choice and points to pertinent functions for hits and checks for game over
            playerChoice = getIntegerFromConsole();
            if (playerChoice == 1){
                playerSwing();
            } else if (playerChoice == 2){
                doNothing();
            } else {
                NSLog(@"You did not choose anything, try again.");
            }
            
        }
        
    }
    return 0;
}// END OF MAIN

