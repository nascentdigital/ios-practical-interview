import UIKit

// What if we wanted to not let the user press the back button to get back to this screen?
class MainViewController: UIViewController {
    @IBOutlet weak var startBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Start"
    }


    @IBAction func onStart(_ sender: Any) {
        navigationController?.pushViewController(NewCharacterViewController(),
                                                 animated: true)
    }
}

