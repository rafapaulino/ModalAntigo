//
//  SegundaTelaViewController.h
//  ModalAntigo
//
//  Created by Rafael Brigagão Paulino on 28/08/12.
//  Copyright (c) 2012 Rafael Brigagão Paulino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SegundaTelaViewController : UIViewController

@property (nonatomic, weak) IBOutlet UITextField *campoTexto;

-(IBAction)voltarClicado:(id)sender;
-(IBAction)irParaTerceira:(id)sender;
@end
