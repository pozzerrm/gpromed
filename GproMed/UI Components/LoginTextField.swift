//
//  LoginTextField.swift
//  GproMed
//
//  Created by Victor Magalhaes on 18/10/2018.
//  Copyright © 2018 GproMed. All rights reserved.
//

import Foundation
import UIKit

class LoginTextField: UITextField {
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        setup(fontSize: fontSize)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { return nil }
    
    private func setup(fontSize: CGFloat){
        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.4)
        font = UIFont(name: "Avenir", size: fontSize)
        textAlignment = .center
        layer.cornerRadius = 5
        translatesAutoresizingMaskIntoConstraints = false
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.5
    }

}
