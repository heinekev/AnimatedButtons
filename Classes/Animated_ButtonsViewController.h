//
//  Animated_ButtonsViewController.h
//  Animated Buttons
//
//  Created by Kevin Anderson on 3/17/10.
//  Copyright Apple Inc 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Animated_ButtonsViewController : UIViewController {
	
	IBOutlet UILabel *buttonLabel;
	IBOutlet UIButton *Button1;
	IBOutlet UIButton *Button2;
	IBOutlet UIButton *Button3;
	NSTimer *animateTimer;
	NSTimer *bounceTimer;
	int growCount, growDir;
	CGFloat buttonScale;
}

@property (nonatomic, retain) NSTimer *animateTimer;
@property (nonatomic, retain) NSTimer *bounceTimer;

-(void) animateButtons;
-(void) bounceButtons;
-(IBAction) buttonBounce;
-(IBAction) buttonMove;



@end

