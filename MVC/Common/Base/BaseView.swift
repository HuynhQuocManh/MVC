//
//  BaseView.swift
//  MVC
//
//  Created by LinhVM on 11/29/19.
//  Copyright © 2019 LinhVM. All rights reserved.
//

import UIKit

public class BaseView: UIView,ReusableView {
 
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        initilaize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   public func initilaize() {
        
    }


}
