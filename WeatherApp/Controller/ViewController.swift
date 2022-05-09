//
//  ViewController.swift
//  WeatherApp
//
//  Created by Anton Vikhlyaev on 08.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var pressureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        temperatureLabel.addCharacterSpacing(kernValue: -10)
        
        searchTextField.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
        searchTextField.layer.cornerRadius = 5
        searchTextField.layer.borderWidth = 1.5
        searchTextField.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.3).cgColor
        searchTextField.attributedPlaceholder = NSAttributedString(
            string: "Введите город",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.white]
        )
        
        bgView.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.1)
        bgView.layer.cornerRadius = 10
        bgView.layer.borderWidth = 1.5
        bgView.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.2).cgColor
    }
    
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
        
    }
    
    
    
}

//MARK: - UILabel: addCharacterSpacing

extension UILabel {
    func addCharacterSpacing(kernValue: Double = 1.15) {
        guard let text = text, !text.isEmpty else { return }
        let string = NSMutableAttributedString(string: text)
        string.addAttribute(NSAttributedString.Key.kern, value: kernValue, range: NSRange(location: 0, length: string.length - 1))
        attributedText = string
    }
}

