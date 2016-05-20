//
//  imageViewCell.swift
//  
//
//  Created by Administrator on 5/19/16.
//
//

import UIKit

class imageViewCell: UICollectionViewCell {

    @IBOutlet weak var imageArtist: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func reuseIdentifier() -> String{
        return "imageViewCell"
    }

}
