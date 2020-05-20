
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yelowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    
    @IBOutlet weak var showStartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.layer.cornerRadius = 70
        redLabel.alpha = 0.3
        
        yelowLabel.layer.cornerRadius = 70
        yelowLabel.alpha = 0.3
        
        greenLabel.layer.cornerRadius = 70
        greenLabel.alpha = 0.3
        
        showStartButton.layer.cornerRadius = 10
    }

    @IBAction func startButton() {
        
        if redLabel.alpha < 1 && yelowLabel.alpha < 1 && greenLabel.alpha < 1 {
            redLabel.alpha = 1
            showStartButton.setTitle("NEXT", for: .normal)
        } else if yelowLabel.alpha < 1 && greenLabel.alpha < 1 {
            redLabel.alpha = 0.3
            yelowLabel.alpha = 1
        } else if greenLabel.alpha < 1 {
            yelowLabel.alpha = 0.3
            greenLabel.alpha = 1
        } else {
            showStartButton.setTitle("START", for: .normal)
            greenLabel.alpha = 0.3
        }
    }
}

