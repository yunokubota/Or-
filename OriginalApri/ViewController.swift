//
//  ViewController.swift
//  OriginalApri
//
//  Created by 久保田有乃 on 2021/05/23.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var TextField1 : UITextField!
    @IBOutlet weak var TextField2 : UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //文字色
        TextField1.textColor = UIColor.black
        //整列
        TextField1.textAlignment = NSTextAlignment.center
        //境界線
        TextField1.borderStyle = UITextField.BorderStyle.roundedRect
        //グレーの文字
        TextField1.placeholder = "出発地を入力"
        //クリアボタン
        TextField1.clearButtonMode = UITextField.ViewMode.whileEditing
        //キーボードタイプ
        TextField1.keyboardType = UIKeyboardType.URL
        //リターンキータイプ
        TextField1.returnKeyType = UIReturnKeyType.done
        //リターンキー閉じる
        TextField1.delegate = self
        
        //文字色
        TextField2.textColor = UIColor.black
        //整列
        TextField2.textAlignment = NSTextAlignment.center
        //境界線
        TextField2.borderStyle = UITextField.BorderStyle.roundedRect
        //グレーの文字
        TextField2.placeholder = "出発地を入力"
        //クリアボタン
        TextField2.clearButtonMode = UITextField.ViewMode.whileEditing
        //キーボードタイプ
        TextField2.keyboardType = UIKeyboardType.URL
        //リターンキータイプ
        TextField2.returnKeyType = UIReturnKeyType.done
        //リターンキー閉じる
        TextField2.delegate = self
    }
    
    //テキストフィールドでリターンが押されたときに通知され起動するメソッド
       func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           //textField.resignFirstResponder()　←↓どっちでもいい
           self.view.endEditing(true)
           return true
       }
       override func didReceiveMemoryWarning() {
           super.didReceiveMemoryWarning()
           // Dispose of any resources that can be recreated.
       }
    


}

