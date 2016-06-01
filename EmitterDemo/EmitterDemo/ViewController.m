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
    
    CAEmitterCell *emitterCell = [CAEmitterCell emitterCell];
    emitterCell.contents = (__bridge id _Nullable)([UIImage imageNamed:@"image"].CGImage);
    emitterCell.birthRate = 150;
    emitterCell.lifetime = 5;
    emitterCell.color = [UIColor orangeColor].CGColor;
    emitterCell.alphaSpeed = -0.4;
    emitterCell.velocity = 50;
    emitterCell.velocityRange = 50;
    emitterCell.emissionRange = M_PI * 2.0;
    
    emitterLayer.emitterCells = @[emitterCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
