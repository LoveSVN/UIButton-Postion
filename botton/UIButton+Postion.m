//
//  UIButton+Postion.m
//  botton
//
//  Created by 张晓亮 on 2018/12/20.
//  Copyright © 2018 张晓亮. All rights reserved.
//

#import "UIButton+Postion.h"

@implementation UIButton (Postion)

//inEdgeInsets 一边往里移动是+ ，往外移动是减
- (void)setupImageToRight {
    if (self.titleLabel.text.length && self.imageView.image) {

        CGSize size  = [self intrinsicContentSize];
        CGSize imageSize = self.imageView.image.size;
        self.imageEdgeInsets = UIEdgeInsetsMake(self.imageEdgeInsets.top, self.imageEdgeInsets.left + size.width - imageSize.width, self.imageEdgeInsets.bottom,self.imageEdgeInsets.right- size.width + imageSize.width);
        self.titleEdgeInsets = UIEdgeInsetsMake(self.titleEdgeInsets.top, self.titleEdgeInsets.left -imageSize.width, self.titleEdgeInsets.bottom, self.titleEdgeInsets.right + imageSize.width);
    }
}

- (void)setupImageToTop {

    if (self.titleLabel.text.length && self.imageView.image) {

        CGSize imageSize = self.imageView.image.size;

        CGSize titleSize = [self.titleLabel sizeThatFits:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX)];

        //计算最大宽度 ，并居中
        if (imageSize.width > titleSize.width) {

            self.imageEdgeInsets = UIEdgeInsetsMake(- imageSize.height + self.imageEdgeInsets.top, self.imageEdgeInsets.left + titleSize.width/2, self.imageEdgeInsets.bottom + imageSize.height, self.imageEdgeInsets.right - titleSize.width/2);

            self.titleEdgeInsets = UIEdgeInsetsMake(self.titleEdgeInsets.top, self.titleEdgeInsets.left - imageSize.width/2, self.titleEdgeInsets.bottom, self.titleEdgeInsets.right + imageSize.width/2);


            self.contentEdgeInsets = UIEdgeInsetsMake( imageSize.height + self.contentEdgeInsets.top, self.contentEdgeInsets.left - titleSize.width/2, self.contentEdgeInsets.bottom, self.contentEdgeInsets.right - titleSize.width/2);

        } else {

            self.imageEdgeInsets = UIEdgeInsetsMake(- imageSize.height + self.imageEdgeInsets.top, self.imageEdgeInsets.left + titleSize.width/2, self.imageEdgeInsets.bottom + imageSize.height, self.imageEdgeInsets.right - + titleSize.width/2);


            self.titleEdgeInsets = UIEdgeInsetsMake(self.titleEdgeInsets.top, self.titleEdgeInsets.left - imageSize.width/2, self.titleEdgeInsets.bottom, self.titleEdgeInsets.right + imageSize.width/2);


            self.contentEdgeInsets = UIEdgeInsetsMake( imageSize.height + self.contentEdgeInsets.top, self.contentEdgeInsets.left - imageSize.width/2, self.contentEdgeInsets.bottom, self.contentEdgeInsets.right - imageSize.width/2);
        }
    }
}
@end
