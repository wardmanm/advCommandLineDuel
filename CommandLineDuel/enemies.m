//
//  enemies.m
//  CommandLineDuel
//
//  Created by Mike Wardo on 5/7/14.
//  Copyright (c) 2014 WARDMANM. All rights reserved.
//

#import "enemies.h"

@implementation enemies

-(NSString *)enemyName{
    //local variables for use of enemy generation
    int fnameGen = 0;
    int lnameGen = 0;
    
    //local variables for first and last name
    NSString *fname;
    NSString *lname;
    
    //random numbers for use of name generation
    sranddev();
    fnameGen = rand() % 8 + 1;
    lnameGen = rand() % 8 + 1;
    
    //switch for first name generation
    switch (fnameGen) {
        case 1:
            fname = @"Dave";
            break;
        case 2:
            fname = @"Jerry";
            break;
        case 3:
            fname = @"Howard";
            break;
        case 4:
            fname = @"George";
            break;
        case 5:
            fname = @"Jim";
            break;
        case 6:
            fname = @"Timothy";
            break;
        case 7:
            fname = @"Pennington";
            break;
        case 8:
            fname = @"Jane";
            break;

        default:
            break;
    }
    
    //switch for last name generation
    switch (lnameGen) {
        case 1:
            lname = @"the Mad";
            break;
        case 2:
            lname = @"the Duck";
            break;
        case 3:
            lname = @"the Destroyer";
            break;
        case 4:
            lname = @"the African Swallow";
            break;
        case 5:
            lname = @"the Gnome";
            break;
        case 6:
            lname = @"the Tall";
            break;
        case 7:
            lname = @"the Filthy";
            break;
        case 8:
            lname = @"the Sightless";
            break;

        
        default:
            break;
    }
    return [NSString stringWithFormat:@"%@ %@", fname, lname];

}

-(int)enemyHP{
    //local variable for HP
    int HP;
    sranddev();
    HP = rand() % 5 + 5;
    return HP;
}

@end

