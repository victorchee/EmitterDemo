//
//  ViewController.m
//  EmitterDemo
//
//  Created by Victor Chee on 16/6/1.
//  Copyright © 2016年 VictorChee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CAEmitterLayer *emitterLayer = [CAEmitterLayer layer];
    emitterLayer.frame = self.view.bounds;
    [self.view.layer addSublayer:emitterLayer];
    
    emitterLayer.renderMode = kCAEmitterLayerAdditive;
    emitterLayer.emitterPosition = self.view.center;
    emitterLayer.emitterShape = kCAEmitterLayerLine;
//    emitterLayer.emitterSize = CGSizeMake(CGRectGetWidth(self.view.frame), 1);
    emitterLayer.emitterCells = @[[self emitterCellWithColor:[UIColor orangeColor]], [self emitterCellWithColor:[UIColor purpleColor]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CAEmitterCell *)emitterCellWithColor:(UIColor *)color {
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"image"].CGImage);
    emitterCell.birthRate = 150;
    emitterCell.lifetime = 5;
    emitterCell.color = color.CGColor;
    emitterCell.alphaSpeed = -0.4;
    emitterCell.velocity = 50;
    emitterCell.velocityRange = 50;
    emitterCell.emissionRange = M_PI * 2.0;
    return emitterCell;
}

@end
