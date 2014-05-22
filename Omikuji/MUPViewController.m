//
//  MUPViewController.m
//  Omikuji
//
//  Created by kazuya on 5/22/14.
//  Copyright (c) 2014 COINS Project AID. All rights reserved.
//

#import "MUPViewController.h"
#import "MUPOmikuji.h"

@interface MUPViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) MUPOmikuji *omikji;
@property (strong, nonatomic) NSArray *sadImages;
@property (strong, nonatomic) NSArray *normalImages;
@property (strong, nonatomic) NSArray *happyImages;
@property (strong, nonatomic) NSArray *veryHappyImages;
@end

@implementation MUPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    srand((unsigned)time(NULL));
    self.omikji = [[MUPOmikuji alloc] init];
    UIImage *sad0 =       [UIImage imageNamed:@"sad0.jpg"];
    UIImage *sad1 =       [UIImage imageNamed:@"sad1.jpg"];
    UIImage *sad2 =       [UIImage imageNamed:@"sad2.jpg"];
    UIImage *normal0 =    [UIImage imageNamed:@"normal0.jpg"];
    UIImage *normal1 =    [UIImage imageNamed:@"normal1.jpg"];
    UIImage *normal2 =    [UIImage imageNamed:@"normal2.jpg"];
    UIImage *happy0 =     [UIImage imageNamed:@"happy0.jpg"];
    UIImage *happy1 =     [UIImage imageNamed:@"happy1.jpg"];
    UIImage *happy2 =     [UIImage imageNamed:@"happy2.jpg"];
    UIImage *veryHappy0 = [UIImage imageNamed:@"veryHappy0.jpg"];
    UIImage *veryHappy1 = [UIImage imageNamed:@"veryHappy1.jpg"];
    UIImage *veryHappy2 = [UIImage imageNamed:@"veryHappy2.jpg"];
    
    self.sadImages =       @[sad0, sad1, sad2];
    self.normalImages =    @[normal0, normal1, normal2];
    self.happyImages =     @[happy0, happy1, happy2];
    self.veryHappyImages = @[veryHappy0, veryHappy1, veryHappy2];
    
}
- (IBAction)normalDevine:(id)sender {
    int random = rand()%3;
    self.resultLabel.text = [self.omikji devineWithLuckPower:0];
    if ([self.resultLabel.text isEqualToString:@"凶"]) {
        self.imageView.image = self.sadImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"小吉"]) {
        self.imageView.image = self.normalImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"中吉"]) {
        self.imageView.image = self.happyImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"大吉"]) {
        self.imageView.image = self.veryHappyImages[random];
    }
}
- (IBAction)strongDevine:(id)sender {
    int random = rand()%3;
    self.resultLabel.text = [self.omikji devineWithLuckPower:1];
    if ([self.resultLabel.text isEqualToString:@"凶"]) {
        self.imageView.image = self.sadImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"小吉"]) {
        self.imageView.image = self.normalImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"中吉"]) {
        self.imageView.image = self.happyImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"大吉"]) {
        self.imageView.image = self.veryHappyImages[random];
    }
}
- (IBAction)veryStrongDevine:(id)sender {
    int random = rand()%3;
    self.resultLabel.text = [self.omikji devineWithLuckPower:2];
    if ([self.resultLabel.text isEqualToString:@"凶"]) {
        self.imageView.image = self.sadImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"小吉"]) {
        self.imageView.image = self.normalImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"中吉"]) {
        self.imageView.image = self.happyImages[random];
    } else if ([self.resultLabel.text isEqualToString:@"大吉"]) {
        self.imageView.image = self.veryHappyImages[random];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
