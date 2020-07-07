//
//  UIViewController+Extensions.swift
//  PopcornTime-Mac
//
//  Created by Aritro Paul on 07/07/20.
//  Copyright © 2020 Aritro Paul. All rights reserved.
//

import Foundation
import UIKit

extension UIView{
    func makeCard(){
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 0.2
        self.layer.shadowColor = UIColor.black.cgColor
    }
}
