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
#import "ui.h"

//global variable declaration
//player information
NSString *playerName; // player name
int playerClass; // player class !!!UNUSED!!!
int playerHP; // player hitpoints

//enemy information
NSString *enemyName; // enemy name
int enemyClass; // enemy class !!!UNUSED!!!
int enemyHP; // enemy hitpoints

//other variables
bool gameOver = false; // is the game over?

//function called when player takes a swing
void playerSwing(void){
    battleEngine *damageGen;
    damageGen = [[battleEngine alloc] init];
    enemyHP = [damageGen enemyDamHP:enemyHP :enemyName];
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    if (enemyHP <= 0){
        [uiOutput gameWin:enemyName];
        gameOver = true;
    }
    if (gameOver != true) {
    playerHP = [damageGen playerDamHP:playerHP :enemyName];
        if (playerHP <= 0 ){
            [uiOutput gameLose:enemyName];
            gameOver = true;
        }
    }
}//END OF PLAYERSWING

//function called when player does nothing
void doNothing(void){
    battleEngine *damageGen;
    damageGen = [[battleEngine alloc] init];
    playerHP = [damageGen playerDamHP:playerHP :enemyName];
    ui *uiOutput;
    uiOutput = [[ui alloc] init];
    if (playerHP <= 0){
        [uiOutput gameLose:enemyName];
        gameOver = true;
    }
}// END OF DO NOTHING

void mainLoop(void) {
    while (!gameOver) {
        int playerChoice = 0; // loop variable to log player choice
        ui *uiOutput;
        uiOutput = [[ui alloc] init];
        
        [uiOutput status: playerHP : enemyName : enemyHP];
        [uiOutput mainMenu: enemyName];
        
        // main section of the game, logs player choice and points to pertinent functions for hits and checks for game over
        playerChoice = getIntegerFromConsole();
        if (playerChoice == 1){
            playerSwing();
        } else if (playerChoice == 2){
            doNothing();
        } else {
            [uiOutput noChoice];
        }
    }// END OF WHILE LOOP
}// END OF MAINLOOP

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
        
        //UI setup
        ui *uiOutput;
        uiOutput = [[ui alloc] init];
        
        //Initial Greeting
        [uiOutput greeting: playerName : enemyName : enemyHP : playerHP];
        
        // calls main loop function
        mainLoop();
    }
    return 0;
}// END OF MAIN

