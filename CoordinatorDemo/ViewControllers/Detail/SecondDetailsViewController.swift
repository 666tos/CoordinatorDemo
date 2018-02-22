//
//  SecondDetailsViewController.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

class SecondDetailsViewController: GenericDetailViewController<FirstDetailsCoordinator> {
	
	@IBOutlet private var label: UILabel?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		label?.text = message
	}

}
