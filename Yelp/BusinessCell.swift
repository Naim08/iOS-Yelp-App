//
//  BusinessCell.swift
//  Yelp
//
//  Created by Md Miah on 2/7/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var thumbView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    
    @IBOutlet weak var pricingLabel: UILabel!
    @IBOutlet weak var caterogiesLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    let placeholder = UIImage(named: "placeholder.png")
    @IBOutlet weak var addressLabel: UILabel!
    var business: Business! {
        didSet {
            titleLabel.text = business.name
            thumbView.setImageWithURL(business.imageURL!, placeholderImage: placeholder)
            caterogiesLabel.text = business.categories
            reviewLabel.text = "\(business.reviewCount!) Reviews"
            distanceLabel.text = business.distance
            ratingImageView.setImageWithURL(business.ratingImageURL!, placeholderImage: placeholder)
            
        }
    }

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbView.layer.cornerRadius = 3
        thumbView.clipsToBounds = true
        
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
        
        // Initialization code
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.preferredMaxLayoutWidth = titleLabel.frame.size.width
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
