//
//  PrincipalViewController.m
//  ModalAntigo
//
//  Created by Rafael Brigagão Paulino on 28/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "PrincipalViewController.h"
#import "SegundaTelaViewController.h"

@interface PrincipalViewController ()

@end


@implementation PrincipalViewController


-(IBAction)botaoClicado:(id)sender
{
    //alocar a nova viewController
    SegundaTelaViewController *segundaTela = [[SegundaTelaViewController alloc] initWithNibName:@"SegundaTelaViewController" bundle:nil]; //bundle sao os arquivos (pastas ai do seu projeto)
    
    //ajustar o modo de transicao (animacao feita entre as telas)
    //segundaTela.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    segundaTela.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    //segundaTela.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    //segundaTela.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    
    //apresentar nova tela
    [self presentModalViewController:segundaTela animated:YES];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
