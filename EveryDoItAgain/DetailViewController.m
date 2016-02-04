//
//  DetailViewController.m
//  EveryDoItAgain
//
//  Created by Anthony Tulai on 2016-02-03.
//  Copyright © 2016 Anthony Tulai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
   if (self.detailItem) {
       self.detailDescriptionLabel.text = self.detailToDo.desc;
       self.titleLabel.text = self.detailToDo.title;

    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
       // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
