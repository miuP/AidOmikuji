//
//  MUPOmikuji.h
//  Omikuji
//
//  Created by kazuya on 5/22/14.
//  Copyright (c) 2014 COINS Project AID. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    MUPLuckPowerMin = 0,
    MUPLuckPowerNormal,
    MUPLuckPowerMax
} MUPLuckPower;

typedef enum {
    debug = 0,
    onePlayer,
    twoPlayer
} gameMode;

@interface MUPOmikuji : NSObject
- (NSString *)devineWithLuckPower:(MUPLuckPower)luckpower;

@end
