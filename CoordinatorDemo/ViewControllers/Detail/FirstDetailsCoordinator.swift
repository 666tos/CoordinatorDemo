//
//  FirstDetailsCoordinator.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import Foundation

class FirstDetailsCoordinator: Coordinator {
	
	struct SegueName {
		static let secondDetail = "secondDetail"
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
