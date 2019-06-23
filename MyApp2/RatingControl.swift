//
//  RatingControl.swift
//  MyApp2
//
//  Created by 安西佑介 on 2019/06/22.
//  Copyright © 2019 安西佑介. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: private func
    private func setupButtons() {
        let button = UIButton()
        button.backgroundColor = UIColor.red
        // Add constatins
        button.translatesAutoresizingMaskIntoConstraints = false
        button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
        
        //Add action
        button.addTarget(self, action: #selector (ratingButtonTapped(button: )), for: .touchUpInside)
        
        // Add button to stack view
        addArrangedSubview(button)
    }
    
    //MARK: action
    @objc func ratingButtonTapped(button: UIButton) {
        print("hogehoge")
    }
}