//
//  Animated_ButtonsViewController.m
//  Animated Buttons
//
//  Created by Kevin Anderson on 3/17/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import "Animated_ButtonsViewController.h"

CGFloat buttonScale = 1.0;
int growDir = 0;
int growCount = 0;


@implementation Animated_ButtonsViewController

@synthesize animateTimer,bounceTimer;




-(void) animateButtons {
	CGRect frame1 = [Button1 frame];
	CGRect frame2 = [Button2 frame];
	CGRect frame3 = [Button3 frame];
	frame1.origin.x = frame1.origin.x+1;
	frame2.origin.x = frame2.origin.x-1;
	frame3.origin.x = frame3.origin.x+1;
	Button1.frame = frame1;
	Button2.frame = frame2;
	Button3.frame = frame3;	
	if (frame1.origin.x == 117.00000) {
		[animateTimer invalidate];
	}
}

-(void) bounceButtons {
	
	
	if (buttonScale >= 1.400000) {
		growDir = 0;
	} 
	if (buttonScale <= 0.800000) { 
		growDir = 1;
	}
	switch (growDir) {
			case 0:
			buttonScale = buttonScale - 0.1f;
			break;
			case 1:
			buttonScale = buttonScale + 0.1f;
			if (buttonScale == 1.00000) {
				[bounceTimer invalidate];
			}
			break;
	}
	
	CGAffineTransform transform = CGAffineTransformMakeScale(buttonScale, buttonScale);
	Button1.transform = transform;
	buttonLabel.text = [NSString stringWithFormat:@"%f", buttonScale];
	Button2.transform = transform;
	Button3.transform = transform;
}

-(IBAction) buttonBounce {
	growDir = 1;
	buttonScale = 1.000000;
	bounceTimer = [NSTimer
				   scheduledTimerWithTimeInterval:0.02
				   target:self
				   selector:@selector(bounceButtons)
				   userInfo:nil
				   repeats:YES];
}


-(IBAction) buttonMove {
	animateTimer = [NSTimer 
					scheduledTimerWithTimeInterval:0.0001
					target:self
					selector:@selector(animateButtons)
					userInfo:nil
					repeats:YES];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[self buttonMove];
    [super viewDidLoad];
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
