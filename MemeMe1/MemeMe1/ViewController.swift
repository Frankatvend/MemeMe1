//
//  ViewController.swift
//  MemeMe1
//
//  Created by Frank Feng on 22/01/20.
//  Copyright © 2020 vend. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var cameraButton: UIBarButtonItem!
    @IBOutlet weak var pickButtom: UIBarButtonItem!
    @IBOutlet weak var topTextField: UITextField!
    @IBOutlet weak var buttomTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setTextField()
    }

    override func viewWillAppear(_ animated: Bool) {
        cameraButton.isEnabled = UIImagePickerController.isSourceTypeAvailable(.camera)
    }

    private func setTextField() {
        topTextField.text = "Type in text here"
        topTextField.textAlignment = .center
        
        buttomTextField.text = "Type in text here"
        buttomTextField.textAlignment = .center
    }
    
    @IBAction func pickAnImageFromAlbum(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
    
    @IBAction func pickAnImageFromCamera(_ sender: Any) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.sourceType = .camera
        present(pickerController, animated: true, completion: nil)
    }
    
}

extension ViewController: UITextFieldDelegate {
    
}
