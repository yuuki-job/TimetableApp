//
//  ChoiceColorViewController.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/05/07.
//

import UIKit

protocol CatchProtocol {
    func  catchData(color: UIColor,index:Int)
}

class ChoiceColorViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var colorArray:[UIColor] = [.blue,.gray,.red,.white,.orange,.yellow]
    var index = 0
    var delegate:CatchProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cellSetUp()
    }
    
    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    private func cellSetUp() {
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "ColorCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "Cell")
    }
}
extension ChoiceColorViewController:ColorProtocol{
    func color(index: Int) {
        self.index = index
        collectionView.reloadData()
    }
}

extension ChoiceColorViewController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! ColorCollectionViewCell
        cell.colorView.layoutIfNeeded()
        cell.colorView.backgroundColor = colorArray[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        var colors = UserDefaults.standard.array(forKey: "color")
        colors?[index] = colorArray[indexPath.row]
        UserDefaults.standard.setValue(colors, forKey: "color")
        
        delegate?.catchData(color: colorArray[indexPath.row], index: indexPath.row)
        //scnVC.index = indexPath.row
        //scnVC.color = colorArray[indexPath.row]
        //閉じる
        self.dismiss(animated: true, completion: nil)
        
        //present(scnVC, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width/2
        let height = collectionView.bounds.height/3
        
        return CGSize(width: width, height: width)
    }
}



