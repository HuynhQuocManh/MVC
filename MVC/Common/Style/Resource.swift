//
//  Resource.swift
//  HealthCareViewer
//
//  Created by MACOS on 10/19/18.
//  Copyright © 2018 MACOS. All rights reserved.
//

import UIKit

public class Resource {
    
    public class Images {
        public static var blueLogoImage: UIImage? = UIImage(named: "logoBlue")
         public static var blueBackImage: UIImage? = UIImage(named: "back")
    }
    
    public class Title {
        
        public class SignInAndSignUp {
            public static var patientCodeTitle = "Mã số bệnh nhân / Bác sĩ"
            public static var patientCodePlaceHolder = "Nhập mã số"
            public static var passwordTitle = "Mật khẩu"
            public static var passwordPlaceholder = "Nhập mật khẩu"
            public static var signIn = "Đăng nhập"
            public static var signUp = "Đăng kí"
        }
        public class SignUpAndSignUp {
            public static var signUp = "Đăng kí"
            public static var CodepatientlinkTitle = "Mã số bệnh nhân liên kết"
            public static var CodepatientlinkPlaceHolder = "Mã số liên kết"
            public static var NameTitle = "Họ và tên"
             public static var NamePlaceHolder = "Họ và tên"
             public static var DOPTitle = "Ngày sinh"
            public static var DOPPlaceHolder = "dd/mm/yyy     ▼"
            //Địa chỉ
             public static var addressTitle = "Địa chỉ"
            //Tỉnh/ Thành phố
             public static var addressCityProvincePlaceHolder = "Tỉnh/ Thành phố"
            // Quận Huyện
            public static var addressCountyPlaceHolder = "Quận/Huyện"
             public static var addressPlaceHolder = "Địa chỉ chỗ ở hiện tại (Số nhà, đường…)"
        }
        
        public class Home {
            
        }
        
    }
    
}



