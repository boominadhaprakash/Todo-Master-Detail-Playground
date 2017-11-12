import Foundation
import UIKit

class customCellView:UIView {
    
    lazy var customLabel:UILabel = {
        let label = UILabel()
        label.text = "HI"
        label.textAlignment = .center
        label.textColor = UIColor.purple
        label.center = self.center
        label.sizeToFit()
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addUIElement()
    }
    func addUIElement(){
        self.addSubview(customLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("View deinitializer called")
    }
}
