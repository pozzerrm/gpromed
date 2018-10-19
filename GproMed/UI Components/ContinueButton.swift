//
//  ContinueButton.swift
//  GproMed
//
//  Created by Victor Magalhaes on 19/10/2018.
//  Copyright © 2018 GproMed. All rights reserved.
//


import Foundation
import UIKit

class ContinueButton: UIButton {
    
    init(fontSize: CGFloat) {
        super.init(frame: .zero)
        setup(fontSize: fontSize)
    }
    
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) { return nil }
    
    private func setup(fontSize: CGFloat){
        translatesAutoresizingMaskIntoConstraints = false
        tintColor = .white
        titleLabel?.font = UIFont(name: "Avenir-Heavy", size: fontSize)
        layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.5
        layer.cornerRadius = 5
        backgroundColor = #colorLiteral(red: 0.1490196078, green: 0.6784313725, blue: 0.4431372549, alpha: 1)
    }
}
