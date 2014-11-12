//
//  GHCar.m
//  Home Work OOP
//
//  Created by Sergey Zalozniy on 10/31/14.
//  Copyright (c) 2014 Sergey Zalozniy. All rights reserved.
//

#include "GHCar.h"

@interface GHCar()

@property float x;

@property int y;


@end;@implementation GHCar

-(GHCar *) initWithEngineCapacity:(float)a andHorsePower:(int)b {
    
    self.x = a;
    self.y = b;
    return self;
}

-(void) printCarIformation {
    
    NSLog(@"%@ (%.1f) - %i h/p, max. speed - %.0f", self.mark, self.x, self.y, self.topSpeed);
    
};

-(Boolean) isFasterThanCar:(GHCar *)car1OrCar2 {
    
    if (self.topSpeed > car1OrCar2.topSpeed) {
        return true;
    } else {
        return false;
    }
}

@end
