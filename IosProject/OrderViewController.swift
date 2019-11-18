
import UIKit

class OrderViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var excessProductList = Cart.cartAccess
    var getAddress = UserDefaults.standard
  
    @IBOutlet weak var orderTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

         self.orderTableView.delegate = self
        self.orderTableView.dataSource = self
         self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Home", style: .done ,target: self, action: #selector(BackToHome))
    }
    @objc func BackToHome()
    {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let homeVC = sb.instantiateViewController(withIdentifier: "menuVC") as! MenuTableViewController
        self.navigationController?.pushViewController(homeVC, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(excessProductList.orderedProductList.count)
        return excessProductList.orderedProductList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let orderCell = tableView.dequeueReusableCell(withIdentifier: "PlacedOrderCell") as! OrderTableViewCell
        orderCell.orderTotalAmountLbl.text = String(excessProductList.totalPrice).addingDollar()
        if Cart.cartAccess.paymentMethod == true{
            orderCell.orderMethodLbl.text = "Card Payment"
        }else{
            orderCell.orderMethodLbl.text = "Cash"
        }
        orderCell.orderShippLbl.text = getAddress.string(forKey: "address")
        
        return orderCell
    }
    
 
    

    

}
