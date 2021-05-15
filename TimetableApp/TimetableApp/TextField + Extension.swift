//
//  ShadowTextField.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/04/28.
//

import Foundation
import UIKit

extension UIView {
    func textFieldDesign(cgFloat:CGFloat) {
        //        self.clipsToBounds = true これは設定してはダメ
        //        self.layer.masksToBounds = true これは設定してはダメ
        self.layer.cornerRadius = cgFloat
        self.layer.shadowColor = UIColor.black.cgColor
        //影の透明度
        self.layer.shadowOpacity = 0.8
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
        // 影のぼかし量
        self.layer.shadowRadius = 1
        self.layer.backgroundColor = UIColor.white.cgColor
        var shadowColor: UIColor? {
            get {
                return UIColor.black
            }
        }
    }
}
