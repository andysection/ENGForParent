//
//  WASLLoginChoiceController.swift
//  EngForParent
//
//  Created by admin on 16/12/30.
//  Copyright © 2016年 admin. All rights reserved.
//

import UIKit

class WASLLoginChoiceController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        let imageView = UIImageView(image: UIImage(named: "login_logo"))
        view.addSubview(imageView)
        
        let loginButton = UIButton()
        view.addSubview(loginButton)
        
        let registerButton = UIButton()
        view.addSubview(registerButton)
        
        //constraints
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(100 * SCREEN_SCALE);
            make.centerX.equalTo(view);
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func createButton(text:String, textColor: UIColor, fontSize:CGFloat) -> UIButton {
        let btn = UIButton()
        btn.setTitle(text, for: .normal)
        btn.setTitleColor(textColor, for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: fontSize)
        return btn
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
