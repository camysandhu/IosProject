

import UIKit

class OrderTableViewCell: UITableViewCell {

    
    @IBOutlet weak var orderMethodLbl: UILabel!
    @IBOutlet weak var orderShippLbl: UILabel!
    @IBOutlet weak var orderTotalAmountLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
}
