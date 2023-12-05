import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var labelAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculatorYourAge(_ sender: Any) {
        //get selected date from date picker
        let birthday = self.datePicker.date
        //yyyy-mm-dd hh:mm:ss +0000
        
        //get today date
        let today = Date()
        
        //check our birth date is earlier than today
        if birthday >= today {
            let alertController = UIAlertController(
                title : "Error",
                message: "Please enter a valid date", preferredStyle: .alert
            )
            let alertAction = UIAlertAction(
                title : "Yes",
                style: .default,
                handler: nil
            )
            alertController.addAction(alertAction)
            self.present(alertController, animated: true, completion: nil)
            
            return
        }
        
        //create an instance of the users current calender
        let calender = Calendar.current
        
        //user calendar to get difference between two dates
        let components = calender.dateComponents([.year,.month,.day], from: birthday, to: today)
        
        //result from difference date from above
        guard let ageYears = components.year else {return}
        guard let ageMonths = components.month else {return}
        guard let ageDays = components.day else {return}
        
        //display age in label
        
        self.labelAge.text = "\(birthday)"
        self.labelAge.text = "\(ageYears) years, \(ageMonths) months, \(ageDays) days"
        
    }
    
}