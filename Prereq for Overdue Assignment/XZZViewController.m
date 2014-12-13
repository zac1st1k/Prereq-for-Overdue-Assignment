//
//  XZZViewController.m
//  Prereq for Overdue Assignment
//
//  Created by Zac on 13/12/2014.
//  Copyright (c) 2014 1st1k. All rights reserved.
//

#import "XZZViewController.h"

@interface XZZViewController ()

@end

@implementation XZZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.textView.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [self.textView resignFirstResponder];
        return NO;
    }
    return YES;
}

- (IBAction)processDateButtonPressed:(id)sender {
    NSDate *date = self.datePicker.date;
    NSDateFormatter *formater = [[NSDateFormatter alloc] init];
//    [formater setDateFormat:@"dd/LLL/yy"];
    [formater setDateFormat:@"yyyy-MM-dd"];
    NSString *stringFromDate = [formater stringFromDate:date];
    self.textView.text = stringFromDate;
    NSLog(@"%@", stringFromDate);
    NSLog(@"%@", [NSDate date]);
    int timeInterval = [date timeIntervalSince1970];
    NSLog(@"%i", timeInterval);
}

@end
