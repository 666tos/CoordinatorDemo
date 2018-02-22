//
//  CoordinatedViewController.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

class CoordinatedViewController<C: Coordinator>: UIViewController {
	lazy var coordinator: C = {
		return C(rootViewController: self)
	}()
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		super.prepare(for: segue, sender: sender)
		
		guard let segueHandler = sender as? Coordinator.SegueHandler else {
			return
		}
		
		segueHandler(segue)
	}
	
}
