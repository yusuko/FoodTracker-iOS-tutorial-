//
//  RatingControl.swift
//  MyApp2
//
//  Created by 安西佑介 on 2019/06/22.
//  Copyright © 2019 安西佑介. All rights reserved.
//

import UIKit

@IBDesignable class RatingControl: UIStackView {
    //MARK: properties
    private var ratingButtons = [UIButton]()
    @IBInspectable var starSize: CGSize = CGSize(width: 44.0, height: 44.0) {
        didSet {
            setupButtons()
        }
    }
    @IBInspectable var starCount: Int = 5 {
        didSet {
            setupButtons()
        }
    }
    
    var rating = 0
    
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
        // Load button images
        let bundle = Bundle(for: type(of: self))
        let filedStar = UIImage(named: "filedStar", in: bundle, compatibleWith: self.traitCollection)
        let emptyStar = UIImage(named: "emptyStar", in: bundle, compatibleWith: self.traitCollection)
        let highlightedStar = UIImage(named: "highlightedStar", in: bundle, compatibleWith: self.traitCollection)
        
        // clear any exisiting buttons
        for button in ratingButtons {
            removeArrangedSubview(button)
            button.removeFromSuperview()
        }
        ratingButtons.removeAll()
        
        for _ in 0..<starCount {
            let button = UIButton()
            // Set button image
            button.setImage(emptyStar, for: .normal)
            button.setImage(filedStar, for: .selected)
            button.setImage(highlightedStar, for: .highlighted)
            button.setImage(highlightedStar, for: [.highlighted, .selected])
            
            // Add constatins
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: starSize.width).isActive = true
            button.widthAnchor.constraint(equalToConstant: starSize.height).isActive = true
            
            //Add action
            button.addTarget(self, action: #selector (ratingButtonTapped(button: )), for: .touchUpInside)
            
            // Add button to stack view
            addArrangedSubview(button)
            
            // Add the new button to the rating button array
            ratingButtons.append(button)
        }
    }
    
    //MARK: action
    @objc func ratingButtonTapped(button: UIButton) {
        print("hogehoge")
    }
}
