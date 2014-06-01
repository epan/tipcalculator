//
//  TipViewController.m
//  tipcalculator
//
//  Created by Eric Pan on 5/28/14.
//  Copyright (c) 2014 Eric Pan. All rights reserved.
//

#import "TipViewController.h"
#import "BackgroundLayer.h"

@interface TipViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UITextField *numberOfPeople;
@property (weak, nonatomic) IBOutlet UILabel *totalTipLabel;

- (IBAction)onTap:(id)sender;
- (void)updateValues;

@end

@implementation TipViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Tip Calculon";
        
        CAGradientLayer *bgLayer = [BackgroundLayer blueGradient];
        bgLayer.frame = self.view.bounds;
        [self.view.layer insertSublayer:bgLayer atIndex:0];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self updateValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self.view endEditing:YES];
    [self updateValues];
}

- (void)updateValues {
    float billAmount = [self.billTextField.text floatValue];
    float partySize = [self.numberOfPeople.text floatValue];
    
    NSArray *tipValues = @[@(0.15), @(0.18), @(0.2)];
    float tipAmount = billAmount * [tipValues[self.tipControl.selectedSegmentIndex] floatValue];
    float totalAmount = (tipAmount + billAmount) / partySize;
    
    // Takes floats and converts them to currency format with commas and currency symbols
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterCurrencyStyle];
    NSString *totalAmountFormatted = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:totalAmount]];
    NSString *tipAmountFormatted = [numberFormatter stringFromNumber:[NSNumber numberWithFloat:tipAmount]];
    
    self.tipLabel.text = [NSString stringWithFormat:@"%@", tipAmountFormatted];
    self.totalLabel.text = [NSString stringWithFormat:@"%@", totalAmountFormatted];
}



@end
