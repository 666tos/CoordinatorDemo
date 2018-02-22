//
//  ViewController.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/21/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

class MasterViewController: CoordinatedViewController<MasterCoordinator> {

	@IBAction private func showMessageButtonPressed() {
		coordinator.userWantsToShowMessage("Hello there!")
	}
	
	@IBAction private func showFirstDetailButtonPressed() {
		coordinator.userWantsToShowFirstDetail("Some data1")
	}
	
	@IBAction private func showSecondDetailButtonPressed() {
		coordinator.userWantsToShowSecondDetail("Some data2")
	}
}

