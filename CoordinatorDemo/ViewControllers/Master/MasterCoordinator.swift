//
//  MasterCoordinator.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

class MasterCoordinator: Coordinator {
	
	struct SegueName {
		static let firstDetail = "firstDetail"
		static let secondDetail = "secondDetail"
	}
	
	func userWantsToShowMessage(_ message: String) {
		let alertViewController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
		alertViewController.addAction(UIAlertAction(title: "OK", style: .default))
		
		rootViewController.present(alertViewController, animated: true, completion: nil)
	}
	
	func userWantsToShowFirstDetail(_ message: String) {
		performSegue(withIdentifier: SegueName.firstDetail) { segue in
			guard let firstDetailsViewController = segue.destination as? FirstDetailsViewController else {
				return
			}
			
			firstDetailsViewController.message = message
		}
	}
	
	func userWantsToShowSecondDetail(_ message: String) {
		performSegue(withIdentifier: SegueName.secondDetail) { segue in
			guard let secondDetailsViewController = segue.destination as? SecondDetailsViewController else {
				return
			}
			
			secondDetailsViewController.message = message
		}
	}
}
