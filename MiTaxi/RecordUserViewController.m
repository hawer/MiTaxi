//
//  RecordUserViewController.m
//  MiTaxi
//
//  Created by Hawer Torres on 4/10/13.
//  Copyright (c) 2013 Widetech. All rights reserved.
//

#import "RecordUserViewController.h"

@interface RecordUserViewController ()

@end

@implementation RecordUserViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)record:(id)sender
{
    [self attemptRecord];
}

- (void) attemptRecord
{
    [activityIndicator startAnimating];
    NSString *strUrl = @"http://186.28.255.229/bogota/wstaxcenter.asmx/SetCustomerRecord?strUser=widetech&strPassword=widetech&strPhoneNumber=3123404444&strFullName=Andres Perez&strEmailAddress=kjdf@hotmail.com&strIMEI=21204234234132";
    
    NSString *escaped = [strUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSLog(@"escaped = %@", escaped);
    
    xmlData = [[NSMutableData alloc]init];
    NSURL *url = [NSURL URLWithString:escaped];
    NSURLRequest *req = [NSURLRequest requestWithURL:url];
    connection = [[NSURLConnection alloc]initWithRequest:req delegate:self startImmediately:YES];
}

#pragma mark - NSURLConnectionDelegate

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [xmlData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    [activityIndicator stopAnimating];
    NSString *xmlCheck = [[NSString alloc] initWithData:xmlData encoding:NSUTF8StringEncoding];
    NSLog(@"xmlCheck = %@", xmlCheck);
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    //release the xmlData object
    xmlData = nil;
    
    //The description of the error
    NSString *errorString = [NSString stringWithFormat:@"attempt failed: %@", [error localizedDescription]];
    
    //create and show an alert view with this error
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Error" message:errorString delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
}

@end
