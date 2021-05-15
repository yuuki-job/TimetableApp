//
//  SaveClassNameViewController.swift
//  TimetableApp
//
//  Created by 徳永勇希 on 2021/04/24.
//

import UIKit

class SaveClassNameViewController: UIViewController {
    
    @IBOutlet private weak var verticalStackView: UIStackView!
    @IBOutlet private weak  var classNameTextField: UITextField!
    @IBOutlet private weak var classRoomTextField: UITextField!
    @IBOutlet private weak var facultyNameTextField: UITextField!
    @IBOutlet private weak var memoTextView: UITextView!
    
    private var saveButton: UIBarButtonItem!
    var index = 0
    var color = UIColor.white
    var firstName = ""
    var classLists:SaveDatas?
    var selectedColor = UIColor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldSetUp()
        memoTextFieldDesign()
        textFieldSetUp()
        textViewDelegateSetUp()
        self.title = firstName
        saveButton = UIBarButtonItem(title: "保存", style: .plain, target: self, action: #selector(save))
        self.navigationItem.rightBarButtonItem = saveButton
    }
    
    override func viewWillAppear(_ animated: Bool) {
        classNameTextField.text = classLists?.className
        classRoomTextField.text = classLists?.classRoom
        facultyNameTextField.text = classLists?.facultyName
        print(color)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    //画面が遷移した時に呼ばれるメソッド prepare for segue　を用意
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面を変数に入れる
        let nextVC = segue.destination as! ChoiceColorViewController
        //nextVC.delegate = self
    }
    
    private func textFieldSetUp() {
        classNameTextField.textFieldDesign(cgFloat: 10)
        classRoomTextField.textFieldDesign(cgFloat: 10)
        facultyNameTextField.textFieldDesign(cgFloat: 10)
    }
    
    private func memoTextFieldDesign() {
        memoTextView.layer.cornerRadius = 20
        memoTextView.layer.borderColor = UIColor.black.cgColor
        memoTextView.layer.borderWidth = 1
    }
    
    private func textFeildDelegateSetUp() {
        classNameTextField.delegate = self
        classRoomTextField.delegate = self
        facultyNameTextField.delegate = self
    }
    
    private func textViewDelegateSetUp() {
        memoTextView.delegate = self
    }
    //保存
    //なぜかnilから""に変えたらうまくいった
    @objc func save() {
        if classNameTextField.text == "" && classRoomTextField.text == "" && facultyNameTextField.text == "" {
            let alert = UIAlertController(title: "どれか一つ入力してください", message: nil, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (alertAction) in
                
            }))
            present(alert, animated: true, completion: nil)
        } else {
            guard let className = classNameTextField.text else { return }
            guard let classRoom = classRoomTextField.text else { return }
            guard let facultyName = facultyNameTextField.text else { return }
            guard let memo = memoTextView.text else { return }
            
            let saveDatas = SaveDatas(className: className, classRoom: classRoom, facultyName: facultyName, memo: memo, index: index, firstName: firstName)
            
            var oldSaveDatas = DatasManager.shared.getDatas()
            oldSaveDatas.remove(at: index)
            oldSaveDatas.insert(saveDatas, at: index)
            DatasManager.shared.save(save:oldSaveDatas)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
extension SaveClassNameViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
    }
}
extension SaveClassNameViewController:UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        textView.resignFirstResponder()
    }
}


