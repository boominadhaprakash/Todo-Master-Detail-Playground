//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

class viewController:UIViewController {
    
    lazy var nextBtn:UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 20, y: 64, width: screenSize.width-20, height: 30)
        button.setTitle("Goto Next Page", for: .normal)
        button.addTarget(self, action: #selector(goToNextPage(sender:)), for: .touchUpInside)
        return button
    }()
    
    lazy var custom_view:UIView = {
        let view = UIView(frame:CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
        view.backgroundColor = .red
        view.addSubview(nextBtn)
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(custom_view)
    }
    
    @objc func goToNextPage(sender:UIButton){
        let nextVC = NextViewController()
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}

let navController = UINavigationController(rootViewController: viewController())
PlaygroundPage.current.liveView = navController
