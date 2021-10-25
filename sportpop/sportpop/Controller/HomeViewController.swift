
import UIKit

class HomeViewController: UIViewController {
    
    //MARK: - Conecto la var con la vista
    
    @IBOutlet var tableview: UITableView?
    
    @IBOutlet weak var ProductCeld: ProductCellView!

    @IBOutlet weak var NameProduct: UILabel!

    @IBOutlet weak var PriceProduct: UILabel!

    @IBOutlet weak var SupImageView: UIImageView!

    @IBOutlet weak var NameSubProduct: UILabel!

    @IBOutlet weak var PriceSubProduct: UILabel!

    @IBOutlet weak var ProductStackView: UIStackView!
    
    
    // MARK: - VARIABLES
    private var productRepository = ProductRepository()
    
    private var products: Products = [ ]
    
    //MARK: - Life Cycle
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        title = "Products"
        
        loadData()
        
        tableview?.dataSource = self
        tableview?.delegate = self
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            guard let destination = segue.destination as? DetailViewController,
//                  let data = sender as? Hero else {
//                return
//            }
//
//
//            }
//
//            destination.hero = heroes[indexPath.row]
//        }

    
    // MARK: - Funciones
    
    private func loadData() {
        products = productRepository.productsSample
    }
}
    
extension HomeViewController: UITableViewDelegate , UITableViewDataSource  {
   
    //num de filas en la seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 220
        }
    
    //celda que tineen que pintar para una posicion
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview?.dequeueReusableCell(withIdentifier: "ProductCellView",
        for: indexPath) as? ProductCellView
        
        if(indexPath.row < products.count) {
            cell?.configureView(products: products[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
        
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row < products.count) {
            print(products[indexPath.row])
            
        }
        
    }
}
