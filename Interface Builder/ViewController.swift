import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var valueField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculate(_ sender: UIButton) {
        guard let value = Int(valueField.text!) else { return }
        if value == 0 {
            return resultLabel.text = "factorial \(value)=\(1)"
        }
        var calculatevalue: Double = 1
        for i in 1...value {
            calculatevalue *= Double(i)
            resultLabel.text = "factorial \(value)=\(calculatevalue)"
        }
        
    }
}

