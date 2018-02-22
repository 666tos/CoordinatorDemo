//
//  GenericDetailViewController.swift
//  CoordinatorDemo
//
//  Created by M Ivaniushchenko on 2/22/18.
//  Copyright © 2018 M Ivaniushchenko. All rights reserved.
//

import UIKit

// Keep it generic

class GenericDetailViewController<C: Coordinator>: CoordinatedViewController<C> {

	// Some common logic example

	// Boom! @IBOutlets of generic classes are not recognized in InterfaceBuilder
	
	var message: String?
}
