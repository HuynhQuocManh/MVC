//
//  BaseViewController.swift
//  MVC
//
//  Created by LinhVM on 11/29/19.
//  Copyright © 2019 LinhVM. All rights reserved.
//

import Foundation
import UIKit

protocol ReusableView {
    func initilaize()
}
public class BaseViewController: UIViewController, ReusableView{
    override public func viewDidLoad() {
        super.viewDidLoad()
         view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        initilaize()
        
    }
  public  func initilaize ()  {
   
    }
}
