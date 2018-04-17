//
//  ViewController.swift
//  UIArentController03
//
//  Created by D7703_14 on 2018. 4. 17..
//  Copyright © 2018년 Personal Team. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let myAlert = UIAlertController(title: "알림", message: "설정된 시간이 되었습니다!", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
            })
        
        let cancelAction =  UIAlertAction(title: "취소", style: .cancel, handler: {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        let testAction = UIAlertAction(title: "테스트", style: .destructive, handler: {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
    
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAction)
        
        present(myAlert, animated: true, completion: nil)
    }
}

