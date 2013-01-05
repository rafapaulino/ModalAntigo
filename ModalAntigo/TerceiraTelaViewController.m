//
//  TerceiraTelaViewController.m
//  ModalAntigo
//
//  Created by Rafael Brigagão Paulino on 28/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "TerceiraTelaViewController.h"

@interface TerceiraTelaViewController ()

@end

@implementation TerceiraTelaViewController


-(IBAction)voltarClicado:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
