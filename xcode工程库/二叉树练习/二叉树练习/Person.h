//
//  Person.h
//  二叉树练习
//
//  Created by 胡国彬 on 2017/12/19.
//  Copyright © 2017年 juzikeji. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property(nonatomic,strong)Person * leftChild;

@property(nonatomic,strong)Person * rightChild;

@property(nonatomic,assign)NSUInteger numValue;

@end
