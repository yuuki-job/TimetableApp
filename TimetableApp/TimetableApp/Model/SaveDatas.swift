//
//  SaveDatas.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/05/01.
//

import Foundation
import UIKit

struct SaveDatas:Codable {
    var className:String?
    var classRoom:String?
    var facultyName:String?
    var memo:String?
    var index:Int?
    var firstName:String?
    
    
    init(className:String,classRoom:String,facultyName:String,memo:String,index:Int,firstName:String) {
        self.className = className
        self.classRoom = classRoom
        self.facultyName = facultyName
        self.memo = memo
        self.index = index
        self.firstName = firstName
    }
    static var allData:[SaveDatas] = [SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 0, firstName: "月曜日の1限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 1, firstName: "火曜日の1限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 2, firstName: "水曜日の1限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 3, firstName: "木曜日の1限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 4, firstName: "金曜日の1限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 5, firstName: "土曜日の1限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 6, firstName: "月曜日の2限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 7, firstName: "火曜日の2限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 8, firstName: "水曜日の2限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 9, firstName: "木曜日の2限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 10, firstName: "金曜日の2限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 11, firstName: "土曜日の2限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 12, firstName: "月曜日の3限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 13, firstName: "火曜日の3限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 14, firstName: "水曜日の3限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 15, firstName: "木曜日の3限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 16, firstName: "金曜日の3限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 17, firstName: "土曜日の3限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 18, firstName: "月曜日の4限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 19, firstName: "火曜日の4限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 20, firstName: "水曜日の4限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 21, firstName: "木曜日の4限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 22, firstName: "金曜日の4限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 23, firstName: "土曜日の4限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 24, firstName: "月曜日の5限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 25, firstName: "火曜日の5限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 26, firstName: "水曜日の5限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 27, firstName: "木曜日の5限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 28, firstName: "金曜日の5限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 29, firstName: "土曜日の5限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 30, firstName: "月曜日の6限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 31, firstName: "火曜日の6限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 32, firstName: "水曜日の6限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 33, firstName: "木曜日の6限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 34, firstName: "金曜日の6限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 35, firstName: "土曜日の6限目"),
                                      
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 36, firstName: "月曜日の7限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 37, firstName: "火曜日の7限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 38, firstName: "水曜日の7限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 39, firstName: "木曜日の7限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 40, firstName: "金曜日の7限目"),
                                      SaveDatas(className: "", classRoom: "", facultyName: "", memo: "", index: 41, firstName: "土曜日の7限目")]
}
