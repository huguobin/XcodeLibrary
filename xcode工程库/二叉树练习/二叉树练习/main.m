//
//  main.m
//  二叉树练习
//
//  Created by 胡国彬 on 2017/12/19.
//  Copyright © 2017年 juzikeji. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "personTool.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        personTool * tree = [personTool new];
        for (int i=1; i<=15; i++) {
             [tree addChild:i];
        }
        [tree printTreeByQueue];
         NSLog(@"----------------华丽的分割线-------------------");
        [tree printTreeByRecursive:tree.rootPerson];
        NSLog(@"Hello, World!");
    }
    return 0;
}
