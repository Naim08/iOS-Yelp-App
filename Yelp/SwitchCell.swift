//
//  SwitchCell.swift
//  Yelp
//
//  Created by Md Miah on 2/8/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit
@objc protocol SwitchCellDelegate {
    //@param1 = switchCell
    // @param2 = parameter name
    optional func switchCell(switchCell: SwitchCell, didChangeValue value: Bool)
}


class SwitchCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    weak var delegate: SwitchCellDelegate?
    override func awakeFromNib() {
        super.awakeFromNib()
        onSwitch.addTarget(self, action: "switchValueforChange", forControlEvents: UIControlEvents.ValueChanged)
        // Initialization code
    }
    internal func switchValueforChange() {
        print("value changed")
        delegate?.switchCell?(self, didChangeValue: onSwitch.on)
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
