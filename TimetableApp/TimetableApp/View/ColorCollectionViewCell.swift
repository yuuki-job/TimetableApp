//
//  ColorCollectionViewCell.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/05/15.
//

import UIKit

class ColorCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var colorView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }
    override func layoutSubviews() {
        colorView.layer.masksToBounds = true
        colorView.layer.cornerRadius = colorView.bounds.width/2
    }
}
