import UIKit

class AddAlertViewController: UIViewController {
    @IBOutlet weak var datePicker: UIDatePicker!
    var datePicked: ((_ date: Date) -> Void)?
    
    @IBAction func dismissButtonTapped(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        datePicked?(datePicker.date)
        self.dismiss(animated: true, completion: nil)
    }
}
