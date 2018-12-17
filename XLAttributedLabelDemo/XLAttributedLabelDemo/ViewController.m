//
//  ViewController.m
//  XLAttributedLabelDemo
//
//  Created by Mac-Qke on 2018/12/17.
//  Copyright © 2018 Mac-Qke. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1.设置标签
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 100, self.view.frame.size.width, self.view.frame.size.height)];
    titleLabel.backgroundColor = [UIColor yellowColor];
    titleLabel.text = @"你看这白云，聚了又散，散了又聚";
    titleLabel.textColor = [UIColor redColor];
    titleLabel.numberOfLines = 0;
    [self.view addSubview:titleLabel];
    
    //2.初始化富文本对象
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:titleLabel.text];
    
    //2.1修改富文本中的不同文字的样式
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor blueColor] range:NSMakeRange(0, 5)]; //字体颜色
    [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor purpleColor] range:NSMakeRange(7, 6)]; //字体颜色
    [attributedString addAttribute:NSFontAttributeName value:[UIFont boldSystemFontOfSize:17] range:NSMakeRange(0, 6)]; //字体大小
    
    //3.初始化NSTextAttachment对象
    NSTextAttachment *attchment = [[NSTextAttachment alloc] init];
    attchment.bounds = CGRectMake(20, 100, 40, 40); //设置frame
    attchment.image = [UIImage imageNamed:@"icon"]; //设置图片
    
    //4.创建带有图片的富文本
    NSAttributedString *string = [NSAttributedString attributedStringWithAttachment:attchment];
    [attributedString insertAttributedString:string atIndex:0];//插入到第几个下标
    [attributedString appendAttributedString:string]; //添加到尾部
    
    //5.用label的attributedText属性来使用富文本
    titleLabel.attributedText = attributedString;
    
    
    
    
}


@end
