//
//  CollectionViewCell.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/04/23.
//

import UIKit

protocol ColorProtocol {
    func color(index:Int)
}
class TimetableCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var classNameLabel: UILabel!
    @IBOutlet weak var classRoomLabel: UILabel!
    @IBOutlet weak var facultyNameLabel: UILabel!
    @IBOutlet weak var buttonDesign: UIButton!
    
    var delegate:ColorProtocol?
    var colorIndex = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stackView.backgroundColor = .systemGray3
    }
    
    func setUp(saveDatas:[SaveDatas],index:Int) {
        guard let index = saveDatas[index].index else { return }
        print(index)
        classNameLabel.text = saveDatas[index].className
        classRoomLabel.text = saveDatas[index].classRoom
        facultyNameLabel.text = saveDatas[index].facultyName
    }
    
    @IBAction func chooseColorButton(_ sender: Any) {

        delegate?.color(index: colorIndex)
    }
}
