//
//  BLFBaseTableViewCell.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/28.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFBaseTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    class func getCellHightWithIndex(index: NSIndexPath) -> CGFloat {
            
        if index.row == 3 {
            return BLFMainTextTableViewCell.getHight()
        }
    
        return 44
    }
    
    class func getCellIdentiferWithIndex(index: NSIndexPath) -> String {
        if index.row == 0 {
            return BLFPriorityTableViewCell.getCellIdentifer()
        }
        
        else if index.row == 1 {
            return BLFPointTableViewCell.getCellIdentifer()
        }
            
        else if index.row == 2 {
            return BLFStoryTitleTableViewCell.getCellIdentifer()
        }
        
        else if index.row == 3 {
            return BLFMainTextTableViewCell.getCellIdentifer()
        }
        
        return "base"
    }
    
    func getRowData() -> String? {
        return nil
    }

}
