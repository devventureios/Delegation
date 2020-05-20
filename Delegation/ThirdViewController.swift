//
//  ThirdViewController.swift
//  Delegation
//
//  Created by Eric Alves Brito on 19/05/20.
//  Copyright © 2020 DevVenture. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var subview: UIView!
    
    // MARK: - Properties
    
    // MARK: - Super Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - IBActions
    @IBAction func showColorPicker(_ sender: Any) {
        if let colorPickerVC = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as? ColorPickerViewController {
            
            colorPickerVC.delegate = self
            present(colorPickerVC, animated: true, completion: nil)
        }
    }
    
    // MARK: - Methods
    
}

extension ThirdViewController: ColorPickerViewControllerDelegate {
    func applyColor(_ color: UIColor) {
        subview.backgroundColor = color
    }
}
