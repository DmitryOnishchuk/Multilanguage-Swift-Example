import UIKit

class MainVC: UIViewController{

    @Inject private var userDefaultsManager: UserDefaultsManager
    
    @IBOutlet weak var dynamicLocalizableLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onLoad()
    }
    
    func onLoad(){
        dynamicLocalizableLabel.text = "TEST_LABEL".localized
    }
    
    deinit {
        print("MainVC deinit")
    }
    
    @IBAction func changeLanguageAction(_ sender: UIButton) {
        changeLanguage()
    }
    
    private func changeLanguage() {
        if userDefaultsManager.currentLanguage != "en" {
            userDefaultsManager.currentLanguage = "en"
            AppDelegate.shared.loadView()
        }else{
            userDefaultsManager.currentLanguage = "ru"
            AppDelegate.shared.loadView()
        }
    }
    
    
}
