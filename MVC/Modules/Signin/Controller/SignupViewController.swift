//
//  SignupViewController.swift
//  MVC
//
//  Created by LinhVM on 11/30/19.
//  Copyright © 2019 LinhVM. All rights reserved.
//

import UIKit

class SignupViewController : BaseViewController {
    
    private let datePicker: UIDatePicker = {
        let datepicker = UIDatePicker()
        datepicker.locale = Locale(identifier: "vi")
        return datepicker
    }()
    
    private let CodepatientlinkInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignUpAndSignUp.CodepatientlinkTitle
        view.Placeholder = Resource.Title.SignUpAndSignUp.CodepatientlinkPlaceHolder
        return view
    }()
    private let AddressInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.Placeholder = Resource.Title.SignUpAndSignUp.addressPlaceHolder
        view.HiddenTitle = true
        return view
    }()
    
    private let  ddressCityInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignUpAndSignUp.addressTitle
        view.Placeholder = Resource.Title.SignUpAndSignUp.addressCityProvincePlaceHolder
        return view
    }()
    private let  ddressCountyInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignUpAndSignUp.addressTitle
        view.Placeholder = Resource.Title.SignUpAndSignUp.addressCountyPlaceHolder
        view.HiddenTitle = true
        return view
    }()
    
    private lazy var DOPview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignUpAndSignUp.DOPTitle
        view.Placeholder = Resource.Title.SignUpAndSignUp.DOPPlaceHolder
        view.textfieldInputview = self.datePicker
        return view
    }()
    private let NameInput:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignUpAndSignUp.NameTitle
        view.Placeholder = Resource.Title.SignUpAndSignUp.NamePlaceHolder
        return view
    }()
    override func initilaize() {
        setupviewPatientInputview()
        setupnameInput()
        setupDOPview()
        setupddressCityInputview()
        setupddressCountyInputview()
        setupAddressInputview()
        let TapGesture = UITapGestureRecognizer(target: self, action: #selector(superviewTapped))
        view.addGestureRecognizer(TapGesture)
    }
    @objc func superviewTapped(){
        view.endEditing(true)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let backButton =  UIBarButtonItem(image: Resource.Images.blueBackImage,
                                          style: .plain,
                                          target: self ,
                                          action: #selector(Back))
        let backtitle =  UIBarButtonItem(title: Resource.Title.SignUpAndSignUp.signUp,                                    style: .plain,
                                         target: self,
                                         action: #selector(Back))
        let logoItem = UIBarButtonItem(image: Resource.Images.blueLogoImage,
                                       style: .plain,
                                       target: nil ,
                                       action: nil)
       navigationItem.leftBarButtonItems = [backButton,backtitle]
        navigationItem.rightBarButtonItem = logoItem
    }
    @objc func Back()  {
        navigationController?.popViewController(animated: true)
    }
    
    private func setupviewPatientInputview(){
        view.addSubview(CodepatientlinkInputview)
        CodepatientlinkInputview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_24)
            make.centerX.equalToSuperview()
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
           
            if #available(iOS 11.0, *) {
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Dimension.shared.largeVerticalMargin_56)
            } else {
                make.top.equalTo(topLayoutGuide.snp.top).offset(Dimension.shared.largeVerticalMargin_56)
                // Fallback on earlier versions
            }
        }
    }
    private func setupnameInput(){
        view.addSubview(NameInput)
        NameInput.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_24)
            make.centerX.equalToSuperview()
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(CodepatientlinkInputview.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_24)
                // Fallback on earlier versions
        }
    }
    private func setupDOPview(){
        view.addSubview(DOPview)
        DOPview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_24)
            make.width.equalTo(Dimension.shared.widthFROMANDTOTextField)
            make.top.equalTo(NameInput.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_24)
            // Fallback on earlier versions
        }
    }
    private func setupddressCityInputview(){
        view.addSubview(ddressCityInputview)
        ddressCityInputview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_24)
            make.width.equalTo(Dimension.shared.widthFROMANDTOTextField)
            make.top.equalTo(DOPview.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_24)
            // Fallback on earlier versions
        }
    }
    private func setupddressCountyInputview(){
        view.addSubview(ddressCountyInputview)
        ddressCountyInputview.snp.makeConstraints { (make) in
            make.left.equalTo(ddressCityInputview.snp.right).offset(Dimension.shared.largeVerticalMargin_22)
            make.right.equalTo(NameInput.snp.right)
//            make.width.equalTo(Dimension.shared.widthFROMANDTOTextField)
            make.top.equalTo(DOPview.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_24)
            // Fallback on earlier versions
        }
    }
    private func setupAddressInputview(){
        view.addSubview(AddressInputview)
        AddressInputview.snp.makeConstraints { (make) in
            make.left.equalTo(NameInput.snp.left)
            make.centerX.equalToSuperview()
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(ddressCityInputview.snp.bottom).offset(Dimension.shared.normalVerticalMargin)
            // Fallback on earlier versions
        }
    }
   
}


