//
//  HomeTableViewCell.swift
//  IslamApp
//
//  Created by Uros Zivaljevic on 6/25/17.
//  Copyright © 2017 Uros Zivaljevic. All rights reserved.
//

import UIKit

protocol HomeTableViewCellDelegate {
    func didSelectCell(indexPath: IndexPath, parentIndexPath: IndexPath, title: String)
}

class HomeTableViewCell: UITableViewCell, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var arrowImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subTableView: UITableView! {
        didSet {
            subTableView.delegate = self
            subTableView.dataSource = self
        }
    }
    
    var parentIndexPath: IndexPath!
    var delegate: HomeTableViewCellDelegate?
    var tableViewData = [String]() {
        didSet {
            subTableView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    //MARK: - UITableViewDataSource, UITableViewDelegate
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableViewData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CellID.homeSubCell, for: indexPath)
        cell.textLabel?.text = tableViewData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let text = tableViewData[indexPath.row]
        delegate?.didSelectCell(indexPath: indexPath, parentIndexPath: parentIndexPath, title: text)
    }

    
}
