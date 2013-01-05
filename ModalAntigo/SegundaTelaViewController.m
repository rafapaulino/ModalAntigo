//
//  SegundaTelaViewController.m
//  ModalAntigo
//
//  Created by Rafael Brigagão Paulino on 28/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import "SegundaTelaViewController.h"
#import "TerceiraTelaViewController.h"

@interface SegundaTelaViewController ()

@end

@implementation SegundaTelaViewController


-(IBAction)voltarClicado:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

-(IBAction)irParaTerceira:(id)sender
{
    //esconder o teclado na transicao
    [_campoTexto resignFirstResponder];
    
    //alocar a nova viewController
    TerceiraTelaViewController *terceiraTela = [[TerceiraTelaViewController alloc] initWithNibName:@"TerceiraTelaViewController" bundle:nil]; //bundle sao os arquivos (pastas ai do seu projeto)
    
    //ajustar o modo de transicao (animacao feita entre as telas)
    terceiraTela.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    
    
    //apresentar nova tela
    [self presentModalViewController:terceiraTela animated:YES];
    
    //ajustar algum parametro na tela dedestino
    terceiraTela.minhaLabel.text = _campoTexto.text;
    _campoTexto.text = @"";
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
