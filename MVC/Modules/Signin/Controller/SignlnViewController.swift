import UIKit

class SignlnViewController: BaseViewController {
    
    private let logoImage: UIImageView = {
        let imgeview = UIImageView()
        imgeview.image = Resource.Images.blueLogoImage
        imgeview.contentMode = UIView.ContentMode.scaleAspectFill
        return imgeview
    }()
    
    private let patientInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.patientCodeTitle
        view.Placeholder = Resource.Title.SignInAndSignUp.patientCodePlaceHolder
//        view.error = "khong nhap chu"
        return view
    }()
    
    private let PasswordInputview:TextfieldWithTitle = {
        let view = TextfieldWithTitle()
        view.title = Resource.Title.SignInAndSignUp.passwordTitle
        view.Placeholder = Resource.Title.SignInAndSignUp.passwordPlaceholder
        view.isSecureTextEntry = true
        return view
    }()
    
    override func initilaize() {
        super.initilaize()
      
        setuplogo()
        
        setupviewPatientInputview()
        setupviewPasswordInputview()
        ButtonSignin()
        ButtonSignup()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
          navigationController?.navigationBar.isHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
         navigationController?.navigationBar.isHidden = false
    }
    private let buttonSignln : UIButton = {
        let Button = UIButton()
        Button.backgroundColor = Theme.shared.disableButtonColor
        Button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        Button.setTitle(Resource.Title.SignInAndSignUp.signIn, for: .normal)
        Button.titleLabel?.font = UIFont(name: "YourfontName", size: Dimension.shared.captionFontSize)
        Button.addTarget(self, action: #selector(actionSignin), for: .touchUpInside)
        return Button
        
    }()
    private let buttonSignup : UIButton = {
        let Button = UIButton()
        Button.backgroundColor = UIColor.clear
        Button.setTitleColor(Theme.shared.accentColor, for: .normal)
        Button.layer.cornerRadius = Dimension.shared.defaultHeightButton / 2
        Button.setTitle(Resource.Title.SignInAndSignUp.signIn, for: .normal)
        Button.titleLabel?.font = UIFont(name: "YourfontName", size: Dimension.shared.captionFontSize)
        Button.addTarget(self, action: #selector(actionSignup), for: .touchUpInside)
        return Button
        
    }()
    
    private func setupviewPatientInputview(){
        view.addSubview(patientInputview)
        patientInputview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_42)
            make.centerX.equalToSuperview()
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(logoImage.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
        }
    }
    
    private func setupviewPasswordInputview(){
        view.addSubview(PasswordInputview)
        PasswordInputview.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_42)
            make.right.equalToSuperview().offset(-Dimension.shared.largeHorizontalMargin_42)
            make.width.equalTo(Dimension.shared.defaultWidthTextfield)
            make.top.equalTo(patientInputview.snp.bottom).offset(Dimension.shared.largeVerticalMargin_32)
        }
    }
    func setuplogo()  {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            if #available(iOS 11.0, *) {
                make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(Dimension.shared.toplogo_78)
            } else {
               make.top.equalToSuperview().offset(Dimension.shared.toplogo_78)
            }
            make.centerX.equalToSuperview()
            
        }
    }
    func ButtonSignin()  {
    view.addSubview(buttonSignln)
        buttonSignln.snp.makeConstraints { (make) in
make.top.equalTo(PasswordInputview.snp.bottom).offset(Dimension.shared.largeVerticalMargin_60)
            make.right.equalTo(patientInputview)
//            make.width.equalTo(Dimension.shared.defaultWidthButton)
            make.centerX.equalToSuperview()
            make.height.equalTo(Dimension.shared.defaultHeightButton)
        }
    }
    func ButtonSignup()  {
        view.addSubview(buttonSignup)
        buttonSignup.snp.makeConstraints { (make) in
            make.top.equalTo(buttonSignln.snp.bottom).offset(Dimension.shared.largeVerticalMargin)
            make.right.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_42)
            make.width.equalTo(Dimension.shared.defaultWidthButton)
            make.centerX.equalToSuperview()
            make.height.equalTo(Dimension.shared.defaultHeightButton)
        }
    }
    
    @objc func actionSignin(){
        if patientInputview.DataTextfield == nil && PasswordInputview.DataTextfield == nil {
            patientInputview.setLineColor = Theme.shared.errorColor
            patientInputview.error = "khong co du lieu"
            
            PasswordInputview.setLineColor = Theme.shared.errorColor
            PasswordInputview.error = "khong co du lieu"
        }
//        print("dang nhap \(patientInputview.DataTextfield)")
    }
    @objc func actionSignup(){
        
          navigationController?.pushViewController(SignupViewController(), animated: true)
    }
}
