
import UIKit
 // enlazo class en el dni de tableview en storyboard
class ProductCellView: UITableViewCell {
    @IBOutlet var cellView: UIView?
    @IBOutlet var productImage: UIImageView?
    @IBOutlet var name: UILabel?
    @IBOutlet var price: UILabel?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
                
        cellView?.layer.cornerRadius = 4.0
        cellView?.layer.shadowColor = UIColor.gray.cgColor
        cellView?.layer.shadowOffset = CGSize.zero
        cellView?.layer.shadowOpacity = 0.7
        cellView?.layer.shadowRadius = 4.0

    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
       
        productImage?.image = nil
        name?.text = nil
        price?.text = nil
    }
    
    func configureView(products: Product) {
        productImage?.image = UIImage(named: products.image ?? "")
        name?.text = products.name
        price?.text = products.price
        
    }
    
    
}
