import Foundation
import UIKit

public class NextViewController: UIViewController {
    
    lazy var tableView:UITableView = {
        let table_view = UITableView.init(frame: CGRect(x:0, y:0, width: screenSize.width, height: screenSize.height))
        table_view.register(customCell.self, forCellReuseIdentifier: "Cell")
        table_view.backgroundColor = UIColor.lightGray
        table_view.tableFooterView = UIView()
        return table_view
    }()
    
    lazy var customView:UIView = {
        let custom_view = UIView(frame:CGRect(x: 0, y: 0, width: screenSize.width, height: screenSize.height))
        custom_view.backgroundColor = UIColor.orange
        tableView.delegate = self
        tableView.dataSource = self
        custom_view.addSubview(tableView)
        return custom_view
    }()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(customView)
    }
    
    deinit {
        print("Controller deinitializer called")
    }
}

extension NextViewController:UITableViewDataSource,UITableViewDelegate{
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
