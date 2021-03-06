//
//  BLFStoryTitleTableViewCell.swift
//  backlogForiOS
//
//  Created by tomoki on 2016/06/28.
//  Copyright © 2016年 tomoki. All rights reserved.
//

import UIKit

class BLFStoryTitleTableViewCell: BLFBaseTableViewCell {
    @IBOutlet var inputField: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: - Override BaseTableViewCell
    override func getRowData() -> String? {
        if inputField.text?.characters.count == 0 {
            return nil
        }
        return self.inputField.text
    }
    
    class func getCellIdentifer() -> String {
        return "StoryTitleCell"
    }
    
    class func getNibName() -> String {
        return "BLFStoryTitleTableViewCell"
    }
}
