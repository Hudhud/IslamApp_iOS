//
//  HomeViewController.swift
//  IslamApp
//
//

import UIKit

class HomeData {
    let name: String
    let dataArray: [String]
    var expanded: Bool = false
    
    init(name: String, dataArray: [String]) {
        self.name = name
        self.dataArray = dataArray
    }
}

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, HomeTableViewCellDelegate {

    let ROW_HEIGHT: CGFloat = 50
    let SUB_ROW_HEIGHT: CGFloat = 44
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.tableFooterView = UIView()
        }
    }
    
    var selectedIndexPaths = [IndexPath]()
    var selectedItem = ""
    
    let tableData = [
        HomeData(name: "Allah", dataArray: [
            "De 13 egenskaber",
            ]),
        HomeData(name: "Profeterne", dataArray: [
            "Hvad er en profet?",
            "Profeternes egenskaber",
            ]),
        HomeData(name: "Konvertering til islam", dataArray: [
            "Trosbekendelsen",
            ]),
        HomeData(name: "Wudu'", dataArray: [
            "Hvordan man udfører wudu",
            "Betingelser",
            "Afbrydelser"
            ]),
        HomeData(name: "Bønnen", dataArray: [
            "Søjler",
            "Betingelser",
            "Afbrydelser",
            "Hvordan indtræder bønnerne?"
            ]),
        HomeData(name: "Fasten", dataArray: [
            "Hvem er pålagt til at faste?",
            "Fastens søjler",
            "Dagene man ikke må faste"
            ])
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - UITableViewDelegate, UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellID.homeCell, for: indexPath) as! HomeTableViewCell
        
        let homeData = tableData[indexPath.row]
        
        cell.nameLabel.text = homeData.name
        cell.tableViewData = homeData.dataArray
        cell.arrowImageView.image = homeData.expanded ? #imageLiteral(resourceName: "show_up") : #imageLiteral(resourceName: "show_down")
        cell.delegate = self
        cell.parentIndexPath = indexPath
        
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let homeData = tableData[indexPath.row]
        
        if let index = selectedIndexPaths.index(of: indexPath) {
            selectedIndexPaths.remove(at: index)
            homeData.expanded = false
        } else {
            selectedIndexPaths.append(indexPath)
            homeData.expanded = true
        }
    
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if selectedIndexPaths.contains(indexPath) {
            let homeData = tableData[indexPath.row]
            return ROW_HEIGHT + CGFloat(homeData.dataArray.count) * SUB_ROW_HEIGHT
        }
        return ROW_HEIGHT
    }
    
    func didSelectCell(indexPath: IndexPath, parentIndexPath: IndexPath, title: String) {
        
        self.selectedItem = title
        
        if parentIndexPath.row == 0 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generate13egenskaber())
            }
        }
        
        if parentIndexPath.row == 1 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToText, sender: Text.hvadErEnProfet)
            }
            if indexPath.row == 1 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateProfeternes())
            }
        }
        
        if parentIndexPath.row == 2 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateTrosbekendelsen())

            }
        }
        
        if parentIndexPath.row == 3 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateHvordanMan())
            }
            if indexPath.row == 1 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateWuduBetingelser())
            }
            if indexPath.row == 2 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateWuduAfbrydelser())
            }
        }
        
        if parentIndexPath.row == 4 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateBonnenSojler())
            }
            
            if indexPath.row == 1 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateBonnenBetingelser())
            }
            if indexPath.row == 2 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateBonnenAfbrydelser())
            }
            if indexPath.row == 3 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateBoentider())
            }
         
        }
        
        if parentIndexPath.row == 5 {
            if indexPath.row == 0 {
                self.performSegue(withIdentifier: Segue.homeToText, sender: Text.fastenEnhver)
            }
            if indexPath.row == 1 {
                self.performSegue(withIdentifier: Segue.homeToPager, sender: TabItemDataGenerator.generateFastensSojler())
            }
            if indexPath.row == 2 {
                self.performSegue(withIdentifier: Segue.homeToText, sender: Text.fastenDetEr)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        

        
        if segue.identifier == Segue.homeToText {
            segue.destination.title = self.selectedItem
            if let textVC = segue.destination as? TextViewController,
                let text = sender as? String {
                textVC.text = text
            }
        }
        
        if segue.identifier == Segue.homeToPager {
            segue.destination.title = self.selectedItem
            if let pagerVC = segue.destination as? PagerTabsViewController,
                let tabItemData = sender as? [TabItemData] {
                pagerVC.tabItemData = tabItemData
            }
        }
        
    }

}
