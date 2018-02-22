//
//  Coordinator.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

class Coordinator {
	
	typealias SegueHandler = (_ segue: UIStoryboardSegue) -> ()
	
	// To resolve retain cycle
	unowned let rootViewController: UIViewController
	
	required init(rootViewController: UIViewController) {
		self.rootViewController = rootViewController
	}
	
	func performSegue(withIdentifier identifier: String, handler: SegueHandler? = nil) {
		rootViewController.performSegue(withIdentifier: identifier, sender: handler)
	}
}
