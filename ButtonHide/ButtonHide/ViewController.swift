//
//  ViewController.swift
//  ButtonHide
//
//  Created by Ning on 2019/9/2.
//  Copyright © 2019 Ning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var docFormSignBtnStr: String?
    var editButtonStr: String?
    var docTextSignButtonStr: String?
    /// 编辑正文按钮
    lazy var editButton: UIButton = {
        let editButton = UIButton()
        editButton.setTitle("编辑正文", for: .normal)
        editButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        editButton.backgroundColor = #colorLiteral(red: 0.2469490767, green: 0.5580791831, blue: 0.7288593054, alpha: 1)
        editButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.snp.makeConstraints { [weak self] (make) in
            guard let strongSelf = self else {
                return
            }
        }
        return editButton
    }()
    
    /// 签批正文按钮
    lazy var docTextSignButton: UIButton = {
        let docTextSignButton = UIButton()
        docTextSignButton.setTitle("签批正文", for: .normal)
        docTextSignButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        docTextSignButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        docTextSignButton.backgroundColor = #colorLiteral(red: 0.2469490767, green: 0.5580791831, blue: 0.7288593054, alpha: 1)
        docTextSignButton.translatesAutoresizingMaskIntoConstraints = false
        docTextSignButton.snp.makeConstraints { [weak self] (make) in
            guard let strongSelf = self else {
                return
            }
        }
        return docTextSignButton
    }()
    
    ///  办文单签批按钮
    lazy var docFormSignButton: UIButton = {
        let docFormSignButton = UIButton()
        docFormSignButton.setTitle("办文单签批", for: .normal)
        docFormSignButton.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        docFormSignButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        docFormSignButton.backgroundColor = #colorLiteral(red: 0.2469490767, green: 0.5580791831, blue: 0.7288593054, alpha: 1)
        docFormSignButton.translatesAutoresizingMaskIntoConstraints = false
        docFormSignButton.snp.makeConstraints { [weak self] (make) in
            guard let strongSelf = self else {
                return
            }
        }
        return docFormSignButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        editButtonStr = "0"
        docFormSignBtnStr = "0"
        docTextSignButtonStr = "0"
        let allBtns = [editButton, docFormSignButton, docTextSignButton]
        var show = [editButtonStr, docFormSignBtnStr, docTextSignButtonStr]
        let screenWidth = Int(UIScreen.main.bounds.width)
        var showBtns:[UIButton] = []
        var i = 0
        for btn in allBtns {
            if show[i] == "1"{
                btn.isHidden = true
            }else{
                showBtns.append(btn)
            }
            i += 1
        }
        var j = 0
        for btn in showBtns {
            print((((screenWidth-80*(j+1))/(j+2))*(j+1))+80*j)
            btn.frame = CGRect(x:(((screenWidth-80*showBtns.count)/(showBtns.count+1))*(j+1))+80*j , y: 80, width: 80, height: 30)
            view.addSubview(btn)
            j += 1
        }
    }
}
