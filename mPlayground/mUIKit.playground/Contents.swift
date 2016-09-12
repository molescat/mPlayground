/*:
## UIKit
*/
import UIKit

//: Color literals are entered via the Menu
//: * Editor > Insert Color Literal

let colorLiteral = #colorLiteral(red: 0.9346159696578979, green: 0.6284804344177246, blue: 0.107728436589241, alpha: 1)
let color = UIColor.red

//: Remember playground is a package, and the image lives in Resources folder

let image = UIImage(named:"bulb")

class DataSource: NSObject, UITableViewDataSource {

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
  {
    return 4;
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
  {
    let cellStyle = UITableViewCellStyle.value1	
    let cell = UITableViewCell(style: cellStyle, reuseIdentifier: nil)
    cell.textLabel?.text = "text"
    if let detailTextLabel = cell.detailTextLabel
    {
      detailTextLabel.text = "Detail Text"
    }
    return cell
  }

  
}

let ds = DataSource()
let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 200), style: .plain)
tableView.dataSource = ds
tableView.reloadData()
