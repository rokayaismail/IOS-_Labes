//
//  ViewController.m
//  Calculator
//
//  Created by JETS Mobile Lab-11 on 4/22/19.
//  Copyright © 2019 Jets. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSInteger num_1,num_2, oper;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)num0:(id)sender {
   // if(![_display.text  isEqual: @""])
        _display.text=[_display.text stringByAppendingString:@"0"];
}

- (IBAction)num1:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"1"];
}

- (IBAction)num2:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"2"];
}

- (IBAction)num3:(id)sender {
     _display.text=[_display.text stringByAppendingString:@"3"];
}

- (IBAction)num4:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"4"];
}

- (IBAction)num5:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"5"];
}

- (IBAction)num6:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"6"];
}

- (IBAction)num7:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"7"];
}

- (IBAction)num8:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"8"];
}

- (IBAction)num9:(id)sender {
    _display.text=[_display.text stringByAppendingString:@"9"];
}

- (IBAction)subtract:(id)sender {
//    _display.text=[_display.text stringByAppendingString:@"-"];
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 1;
}

- (IBAction)add:(id)sender {
//    _display.text=[_display.text stringByAppendingString:@"+"];
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 0;
}

- (IBAction)calculate:(id)sender {
    _num_2 =[_display.text intValue];
    NSString * str;
    switch (_oper) {
        case 0:
            str = [NSString stringWithFormat: @"%ld", (long)_num_2+_num_1];
            break;
        case 1:
            str = [NSString stringWithFormat: @"%ld", (long)_num_1-_num_2];
            break;
        case 2:
            str = [NSString stringWithFormat: @"%ld", (long)_num_2*_num_1];
            break;
        case 3:
            if(_num_2 != 0)
            str = [NSString stringWithFormat: @"%ld", (long)_num_1/_num_2];
            else{
                _errorLbl.text = @"infinit";
                _num_2=0;
                _num_2=0;
                _display.text = @"";
            }
            
            break;
        case 4:
            if(_num_2 != 0)
                str = [NSString stringWithFormat: @"%ld", (long)_num_1%_num_2];
            else
                str = [NSString stringWithFormat: @"%ld", (long)_num_2];
            break;
        case 5:
            str = [NSString stringWithFormat: @"%ld", (long)powl(_num_1, _num_2)];
            break;
        default:
            break;
    }
    _display.text = str;
}

- (IBAction)power:(id)sender {
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 5;
}

- (IBAction)mult:(id)sender {
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 2;
}

- (IBAction)divid:(id)sender {
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 3;
}

- (IBAction)mod:(id)sender {
    _num_1 = [_display.text intValue];
    _display.text = @"";
    _oper = 4;
}

- (IBAction)backSpace:(id)sender {
}

- (IBAction)clear:(id)sender {
    _num_2=0;
    _num_2=0;
    _display.text = @"";
}
- (IBAction)point:(id)sender {
}
@end
