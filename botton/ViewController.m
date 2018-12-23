//
//  ViewController.m
//  botton
//
//  Created by 张晓亮 on 2018/12/20.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "ViewController.h"
#import <Masonry/Masonry.h>
#import "UIButton+Postion.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"home_add"] forState:UIControlStateNormal];
    [btn setTitle:@"nidsadsadsa" forState:UIControlStateNormal];
    [btn setupImageToTop];


    [self.view addSubview:btn];

    [btn mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(@(100));
        make.left.equalTo(@(15));
        make.width.equalTo(@(200));
    }];
}


@end
