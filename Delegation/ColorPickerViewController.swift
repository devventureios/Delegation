//
//  ColorPickerViewController.swift
//  Delegation
//
//  Created by Eric Alves Brito on 19/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

protocol ColorPickerViewControllerDelegate: class {
    func applyColor(_ color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var sliderRed: UISlider!
    @IBOutlet weak var sliderGreen: UISlider!
    @IBOutlet weak var sliderBlue: UISlider!
    @IBOutlet weak var viewColor: UIView!
    
    // MARK: - Properties
    weak var delegate: ColorPickerViewControllerDelegate?
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColor.backgroundColor = .white
    }
    
    // MARK: - IBActions
    @IBAction func applyColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        delegate?.applyColor(viewColor.backgroundColor!)
    }

    @IBAction func selectColor(_ sender: UISlider) {
        viewColor.backgroundColor = UIColor(red: CGFloat(sliderRed.value),
                                            green: CGFloat(sliderGreen.value),
                                            blue: CGFloat(sliderBlue.value),
                                            alpha: 1)
    }
    
    // MARK: - Methods
    
}
