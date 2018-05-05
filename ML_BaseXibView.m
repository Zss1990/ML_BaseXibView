//
//  ML_BaseXibView.m
//
//  Created by zhushuaishuai on 2018/3/22.
//

#import "ML_BaseXibView.h"

@implementation ML_BaseXibView

#pragma mark - life cycle

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        NSBundle *meBundle = [NSBundle bundleForClass:[self class]];
        [meBundle loadNibNamed:NSStringFromClass([self class])
                                      owner:self
                                    options:nil];
        self.ownView.frame = frame;
        [self addSubview:self.ownView];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.ownView.frame = self.frame;
}


@end
