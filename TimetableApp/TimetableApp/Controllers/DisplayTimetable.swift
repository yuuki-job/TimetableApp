//
//  ViewController.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/04/23.
//

import UIKit

class DisplayTimetable: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var horizontalStackView: UIStackView!
    @IBOutlet weak var verticalStackView: UIStackView!
    
    private var classNameLists:[SaveDatas] = SaveDatas.allData
    private var classBackColor = UIColor.systemGray2
    private var colorIndex = 0
    private let nibId = "CollectionViewCell"
    private let cellId = "Cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellSetUp()
        let asd = DatasManager.shared.getDatas()
        if asd.isEmpty == true {
            DatasManager.shared.save(save: classNameLists)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        classNameLists.removeAll()
        classNameLists = DatasManager.shared.getDatas()
        collectionView.reloadData()
    }
    
    private func cellSetUp() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: nibId, bundle: nil), forCellWithReuseIdentifier: cellId)
    }
}

extension DisplayTimetable:ColorProtocol{
    func color(index: Int) {
        let colorVC = self.storyboard?.instantiateViewController(identifier: "color") as! ChoiceColorViewController
        //let colorVC = ChoiceColorViewController()
        colorVC.modalPresentationStyle = .overCurrentContext
        present(colorVC, animated: true)
    }
}
extension DisplayTimetable:CatchProtocol{
    func catchData(color: UIColor, index: Int) {
        //colorArray[index] = color
        collectionView.reloadData()
        print(color)
    }
}

extension DisplayTimetable:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return classNameLists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! TimetableCollectionViewCell
        cell.delegate = self
        cell.colorIndex = indexPath.row
        //cell.stackView.backgroundColor = colorArray[indexPath.row]
        cell.setUp(saveDatas: classNameLists, index: indexPath.row)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let scnVC = self.storyboard?.instantiateViewController(identifier: "scnVC") as! SaveClassNameViewController
        scnVC.index = indexPath.row
        scnVC.firstName = classNameLists[indexPath.row].firstName!
        
        if classNameLists[indexPath.row].className != "" || classNameLists[indexPath.row].classRoom != "" || classNameLists[indexPath.row].facultyName != ""{
            scnVC.classLists = classNameLists[indexPath.row]
        }
        navigationController?.pushViewController(scnVC, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = horizontalStackView.bounds.width/6 - 1
        let height = verticalStackView.bounds.height/7 - 1
        
        return CGSize(width: width, height: height)
    }
}

