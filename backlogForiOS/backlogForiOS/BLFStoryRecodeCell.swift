//
//  BLFStoryRecodeCell.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/25.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFStoryRecodeCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var primaryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateCell(recodeData: Array<BLFStoryModel>, index: NSIndexPath) {
        if recodeData.count != 0 {
            let row = recodeData[index.row]
            
            self.primaryLabel.text = String.init(format: "%d", row.priority)
            self.titleLabel.text = row.title
        }
    }
    
}
