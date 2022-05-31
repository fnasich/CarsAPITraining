//
//  CarsTableViewCell.swift
//  CarsAPITraining
//
//  Created by Francisco Tomas Nasich on 29/05/2022.
//

import UIKit

class CarsTableViewCell: UITableViewCell {
    @IBOutlet weak var idTitle: UILabel!
    @IBOutlet weak var plateTitle: UILabel!
    @IBOutlet weak var nameTitle: UILabel!
    @IBOutlet weak var descriptionTitle: UILabel!
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var plate: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var des: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
