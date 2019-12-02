//
//  TextfieldWithTitle.swift
//  MVC
//
//  Created by LinhVM on 11/29/19.
//  Copyright © 2019 LinhVM. All rights reserved.
//

import UIKit

class TextfieldWithTitle: BaseView {

    public var title :String? {
        didSet{
            TitleLabel.text = title
        }
    }
    
    public var error :String? {
        didSet{
            ErrorLabel.text = error
        }
    }
  
    
    public var Placeholder :String? {
        didSet{
            Textfield.placeholder = Placeholder
//            Textfield.next
        }
    }
    public var DataTextfield :String? {
        didSet{
            Textfield.text = DataTextfield
            //            Textfield.next
        }
    }
    public var setLineColor :UIColor? {
        didSet{
            lineview.backgroundColor = setLineColor
            //            Textfield.next
        }
    }
    
    public var isSecureTextEntry:Bool = false {
        didSet{
        Textfield.isSecureTextEntry = isSecureTextEntry
        }
    }
    
   
   public override func initilaize() {
        autolauout()
    }
    private  let TitleLabel: UILabel = {
        let labelview = UILabel()
        labelview.textColor = Theme.shared.primaryColor
        return labelview
    }()
    private  let ErrorLabel: UILabel = {
        let labelview = UILabel()
        labelview.textColor = Theme.shared.errorColor
        return labelview
    }()
 
    private let Textfield: UITextField = {
        let textfield = UITextField()
        textfield.tag = 0
        textfield.textColor = Theme.shared.primaryColor
        textfield.addTarget(self, action: #selector(clickTextfield), for: UIControl.Event.allEvents)
        textfield.addTarget(self, action: #selector(endclickTextfield), for: UIControl.Event.editingDidEnd)
        return textfield
    }()
    
    private  let lineview: UIView = {
        let lineView = UIView()
        lineView.backgroundColor = Theme.shared.lineDeviderColor
        return lineView
    }()
    private  func autolauout()  {
      
        addSubview(TitleLabel)
        TitleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        addSubview(Textfield)
        
        //        patientcodeTextfield.bo
        Textfield.snp.makeConstraints { (make) in
            make.top.equalTo(TitleLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin)
            make.left.equalTo(TitleLabel)
            make.right.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalTo(Dimension.shared.defaultHeightTextField)
            
        }
        
        addSubview(lineview)
        lineview.snp.makeConstraints { (make) in
            make.top.equalTo(Textfield.snp.bottom)
            make.left.equalTo(Textfield)
            make.width.equalTo(Textfield)
            make.height.equalTo(Dimension.shared.heightLineDivider)
            make.bottom.equalToSuperview()
        }
        addSubview(ErrorLabel)
        ErrorLabel.snp.makeConstraints { (make) in
            make.top.equalTo(lineview.snp.bottom).offset(10)
            make.left.equalTo(Textfield)
            make.width.equalTo(TitleLabel)
            make.height.equalTo(TitleLabel)
           
        }
        
        
    }
    public var textfieldInputview = UIView(){
        didSet{
            Textfield.inputView = textfieldInputview
        }
    }
    public var HiddenTitle :Bool? = false{
        didSet{
            TitleLabel.isHidden = HiddenTitle!
        }
    }
    @objc func clickTextfield(){
        lineview.backgroundColor = Theme.shared.primaryColor
        ErrorLabel.text = ""
        print("dang click vaof text")
    }
    @objc func endclickTextfield(){
        lineview.backgroundColor = Theme.shared.lineDeviderColor
        print("dang click vaof text")
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        // Try to find next responder
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            
            if nextField.tag > 1 {
                if nextField.tag > 4 {
                   // scrollView.contentOffset = CGPoint(x:0, y: txtPhonenumber.frame.origin.y + 30)
                    
                }else {
                   // scrollView.contentOffset = CGPoint(x:0, y: scrollView.frame.origin.y + 20)
                }
                
                
            }
            
            nextField.becomeFirstResponder()
        } else {
            // Not found, so remove keyboard.
            textField.resignFirstResponder()
        }
        // Do not add a line break
        return false
    }
}
