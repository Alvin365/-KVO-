//
//  ViewController.m
//  AddBlockExemple
//
//  Created by Alvin on 16/4/17.
//  Copyright © 2016年 Alvin. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+KVO.h"
#import "Person.h"
#import "NSObject+Caculator.h"
@interface ViewController ()

@property (nonatomic, strong) Person *p;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Person *p = [[Person alloc]init];
    _p = p;

    [_p al_addObserKeyPath:@"age" options:NSKeyValueObservingOptionNew changedBlock:^(id newValue){
        NSLog(@"age改成了 %@", newValue);
    }];
    
    [CacularManager makeCaculate:^(CacularManager *make) {
        make.add(1).add(2).add(3);
        NSLog(@"结果为%lu",make.result);
    }];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _p.age++;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
