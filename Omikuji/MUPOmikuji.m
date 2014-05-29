//
//  MUPOmikuji.m
//  Omikuji
//
//  Created by kazuya on 5/22/14.
//  Copyright (c) 2014 COINS Project AID. All rights reserved.
//

#import "MUPOmikuji.h"

@implementation MUPOmikuji

- (NSString *)devineWithLuckPower:(MUPLuckPower)luckpower
{
    if (luckpower == MUPLuckPowerMin) {
        int random = rand()%4;
        switch (random) {
            case 0:
                return @"凶";
            case 1:
                return @"小吉";
            case 2:
                return @"中吉";
            case 3:
                return @"大吉";
            default:
                break;
        }
    } else if (luckpower == MUPLuckPowerNormal) {
        int random = rand()%8;
        switch (random) {
            case 0:
                return @"凶";
            case 1:
                return @"小吉";
            case 2:
            case 3:
            case 4:
                return @"中吉";
            case 5:
            case 6:
            case 7:
                return @"大吉";
            default:
                break;
        }
    } else {
        int random = rand()%16;
        switch (random) {
            case 0:
                return @"凶";
            case 1:
                return @"小吉";
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return @"中吉";
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return @"大吉";
            default:
                break;
        }
    }
    return @"";
}

@end
