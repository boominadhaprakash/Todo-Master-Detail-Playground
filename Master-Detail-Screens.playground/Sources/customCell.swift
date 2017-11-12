import Foundation
import UIKit

class customCell:UITableViewCell {
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        AddUIElement()
    }
    
    func AddUIElement(){
        let customView = customCellView(frame: CGRect(x: 0, y: 0, width: screenSize.width, height: 40))
        addSubview(customView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    deinit {
        print("Cell deinitializer called")
    }
}
