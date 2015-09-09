//
//  AspectsPreferences.h
//  demodemodemod
//
//  Created by victor on 15/9/9.
//  Copyright (c) 2015年 colourtime. All rights reserved.
//

/**
 *  使用指南
 此部分分为两个部分：Aspects.h  和  AsUserPreferences.h 两个部分
 对于使用方法进行如下说明：
 
 （1）AsUserPreferences.h类即是对NSUserDefaults保存数据的简单封装，利用该类类名即可进行相关的调用。
 
 （2）Aspects.h 类即是Cocoa中面向方面编程（即切面编程）的简单开源库，你可以通过它为现有的类的方法或者实例添加代码，同时考虑插入点位置，比如before/instead/after。Aspects比常规的方法混用更为简单。
    而该类主要提供了两个方法供使用：
    如下：
 方法一：
    + (id<AspectToken>)aspect_hookSelector:(SEL)selector
    withOptions:(AspectOptions)options
    usingBlock:(id)block
    error:(NSError **)error;
    
 方法二：
    - (id<AspectToken>)aspect_hookSelector:(SEL)selector
    withOptions:(AspectOptions)options
    usingBlock:(id)block
    error:(NSError **)error;
 
 //http://tech.glowing.com/cn/method-swizzling-aop/
 //https://github.com/steipete/Aspects
 //http://tech.glowing.com/cn/method-swizzling-aop/
 */

#ifndef demodemodemod_AspectsPreferences_h
#define demodemodemod_AspectsPreferences_h

#import "Aspects.h"
#import "AsUserPreferences.h"
#endif
