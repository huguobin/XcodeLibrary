//
//  personTool.m
//  二叉树练习
//
//  Created by 胡国彬 on 2017/12/19.
//  Copyright © 2017年 juzikeji. All rights reserved.
//

#import "personTool.h"
#import "Person.h"
@implementation personTool


-(void)addChild:(NSUInteger)numValue
{
    if (self.rootPerson) {
        if (self.queueArray.count==0) {
             [self.queueArray addObject:self.rootPerson];
        }
        while (self.queueArray.count) {
            Person * child = self.queueArray.firstObject;
            if (child.leftChild&&child.rightChild) {
                [self.queueArray addObject:child.leftChild];
                [self.queueArray addObject:child.rightChild];
            }else if(child.leftChild&&(!child.rightChild)){
                Person * rightChild = [Person new];
                rightChild.numValue = numValue;
                child.rightChild = rightChild;
                break;
            }else{
                Person * leftChild = [Person new];
                leftChild.numValue = numValue;
                child.leftChild = leftChild;
                break;
            }
            [self.queueArray removeObjectAtIndex:0];
        }
    }else{
        self.rootPerson = [Person new];
        self.rootPerson.numValue = numValue;
    }
}

/**
 利用队列 树的广度遍历
 */
-(void)printTreeByQueue
{
    [self.queueArray removeAllObjects];
    if (self.rootPerson) {
        [self.queueArray addObject:self.rootPerson];
    }
    
    while (self.queueArray.count) {
        Person * child = self.queueArray.firstObject;
        NSLog(@"%ld",child.numValue);
        if (child.leftChild) {
            [self.queueArray addObject:child.leftChild];
        }
        if (child.rightChild) {
            [self.queueArray addObject:child.rightChild];
        }
        [self.queueArray removeObjectAtIndex:0];
    }
}

/**
 递归调用 树的深度遍历
 */
-(void)printTreeByRecursive:(Person *)person
{
    NSLog(@"%ld",person.numValue);
    if (person.leftChild) {
        [self printTreeByRecursive:person.leftChild];
    }
    if (person.rightChild) {
        [self printTreeByRecursive:person.rightChild];
    }
}

-(NSMutableArray *)queueArray
{
    if (_queueArray ==nil) {
        _queueArray = [NSMutableArray new];
    }
    return _queueArray;
}

@end
