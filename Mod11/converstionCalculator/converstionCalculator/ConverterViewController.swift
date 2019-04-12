//
//  ConverterViewController.swift
//  converstionCalculator
//
//  Created by Chris Harling on 4/11/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    var converters = [converter(label: "Fahrenheit to Celcius", inputUnit: "°F", outputUnit: "°C"),
                        converter(label: "Celcius to Fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                        converter(label: "Miles to Kilometers", inputUnit: "mi", outputUnit: "km"),
                        converter(label: "Kilometers to Miles", inputUnit: "km", outputUnit: "mi")]

    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultConverter = converters[0]
        
        self.outputDisplay.text = defaultConverter.outputUnit
        self.inputDisplay.text = defaultConverter.inputUnit
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Converter(_ sender: AnyObject) {
        
        var currentConverter = converters[0]
        
        let alert = UIAlertController(title: "Choice", message: "Choose conversion", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: "Fahrenheit to Celcius", style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            currentConverter = self.converters[0]
            self.outputDisplay.text = currentConverter.outputUnit
            self.inputDisplay.text = currentConverter.inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: "Celcius to Fahrenheit", style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            currentConverter = self.converters[1]
            self.outputDisplay.text = currentConverter.outputUnit
            self.inputDisplay.text = currentConverter.inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: "Miles to Kilometers", style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            currentConverter = self.converters[2]
            self.outputDisplay.text = currentConverter.outputUnit
            self.inputDisplay.text = currentConverter.inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: "Kilometers to Miles", style: UIAlertAction.Style.default, handler:{
            (alertAction) -> Void in
            currentConverter = self.converters[3]
            self.outputDisplay.text = currentConverter.outputUnit
            self.inputDisplay.text = currentConverter.inputUnit
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
