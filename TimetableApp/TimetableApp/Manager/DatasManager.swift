//
//  DatasManager.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/05/05.
//

import Foundation

class DatasManager {
    static let shared = DatasManager()
    init() {}
    var a = ["0"]
    
    private let saveDatasKey = "saveDatasKey"
    
    func save(save:[SaveDatas]) {
        let data = try? JSONEncoder().encode(save)
        UserDefaults.standard.set(data, forKey: saveDatasKey)
    }
    
    func getDatas() -> [SaveDatas]{
        guard let datas = UserDefaults.standard.data(forKey: saveDatasKey) else {
            return []
        }
        
        guard let saveDatas = try? JSONDecoder().decode([SaveDatas].self, from: datas) else { return [] }
        return saveDatas
    }
}
