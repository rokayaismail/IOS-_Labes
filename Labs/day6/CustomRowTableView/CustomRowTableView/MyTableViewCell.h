//
//  MyTableViewCell.h
//  CustomRowTableView
//
//  Created by JETS Mobile Lab-11 on 4/24/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)myBtn:(UIButton *)sender;

@end

NS_ASSUME_NONNULL_END
