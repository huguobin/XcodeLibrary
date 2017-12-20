//
//  personTool.h
//  二叉树练习
//
//  Created by 胡国彬 on 2017/12/19.
//  Copyright © 2017年 juzikeji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface personTool : NSObject

@property(nonatomic,strong)Person * rootPerson;
@property(nonatomic,strong)NSMutableArray * queueArray;

-(void)addChild:(NSUInteger)numValue;
-(void)printTreeByQueue;
-(void)printTreeByRecursive:(Person *)person;
@end
