import UIKit

final class ViewController: UIViewController {

    //    MARK: - UI

    private lazy var image: UIImageView = {
        let image = UIImage(named: "title")
        let imageView = UIImageView(image: image)
        return imageView
    }()

    private lazy var labelLogin: UILabel = {
        let labelLogin = UILabel()
        labelLogin.text = "Login"
        labelLogin.textColor = .white
        labelLogin.font = UIFont.systemFont(ofSize: 44, weight: .bold)
        labelLogin.textAlignment = .center
        labelLogin.translatesAutoresizingMaskIntoConstraints = false
        return labelLogin
    }()

    private lazy var textFieldName: UITextField = {
        let textFieldName = UITextField()
        let imageUsername = UIImage(named: "iconUserName")
        textFieldName.placeholder = "Username"
        textFieldName.textColor = .black
        textFieldName.backgroundColor = .white
        textFieldName.setLeftIcon(imageUsername!)
        textFieldName.layer.cornerRadius = 20
        return textFieldName
    }()

    private lazy var textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        let imagePassword = UIImage(named: "iconPassword")
        textFieldPassword.placeholder = "Password"
        textFieldPassword.textColor = .black
        textFieldPassword.backgroundColor = .white
        textFieldPassword.setLeftIcon(imagePassword!)
        textFieldPassword.layer.cornerRadius = 20
        return textFieldPassword
    }()

    private lazy var stack: UIStackView = {
        let stack = UIStackView(arrangedSubviews:
                                    [
                                        textFieldName,
                                        textFieldPassword
                                    ])
        stack.axis = .vertical
        stack.spacing = 20
        stack.alignment = .fill
        stack.distribution = .equalSpacing
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()

    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton()
        buttonLogin.setTitle("Login", 
                             for: .normal)
        buttonLogin.backgroundColor = UIColor(red: 107/250,
                                              green: 116/250,
                                              blue: 207/250,
                                              alpha: 2)
        buttonLogin.setTitleColor(.white, 
                                  for: .normal)
        buttonLogin.layer.cornerRadius = 20
        buttonLogin.layer.shadowColor = UIColor.black.cgColor
        buttonLogin.layer.shadowOpacity = 0.3
        buttonLogin.layer.shadowOffset = .zero
        buttonLogin.layer.shadowRadius = 10
        buttonLogin.layer.shouldRasterize = true
        buttonLogin.layer.rasterizationScale = UIScreen.main.scale
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        return buttonLogin
    }()

    private lazy var buttonForgotPassword: UIButton = {
        let buttonForgotPassword = UIButton()
        buttonForgotPassword.setTitle("Forgot your password?",
                                      for: .normal)
        buttonForgotPassword.titleLabel?.font = .systemFont(ofSize: 12,
                                                            weight: .semibold)
        buttonForgotPassword.backgroundColor = .clear
        buttonForgotPassword.setTitleColor(.systemGray,
                                           for: .normal)
        buttonForgotPassword.translatesAutoresizingMaskIntoConstraints = false
        return buttonForgotPassword
    }()

    private lazy var lineLeft: UIView = {
        let lineLeft = UIView()
        lineLeft.backgroundColor = .gray
        lineLeft.translatesAutoresizingMaskIntoConstraints = false
        return lineLeft
    }()

    private lazy var lineRight: UIView = {
        let lineRight = UIView()
        lineRight.backgroundColor = .gray
        lineRight.translatesAutoresizingMaskIntoConstraints = false
        return lineRight
    }()

    private lazy var labelConnectWith: UILabel = {
        let labelConnectWith = UILabel()
        labelConnectWith.text = "or connect with"
        labelConnectWith.textColor = .systemGray2
        labelConnectWith.font = UIFont.systemFont(ofSize: 12,
                                                  weight: .semibold)
        labelConnectWith.translatesAutoresizingMaskIntoConstraints = false
        return labelConnectWith
    }()

    private lazy var buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.backgroundColor = UIColor(red: 53/250,
                                                 green: 164/250,
                                                 blue: 239/250,
                                                 alpha: 3)
        buttonFacebook.layer.cornerRadius = 20
        buttonFacebook.layer.shadowColor = UIColor.black.cgColor
        buttonFacebook.layer.shadowOpacity = 0.3
        buttonFacebook.layer.shadowOffset = .zero
        buttonFacebook.layer.shadowRadius = 10
        buttonFacebook.layer.shouldRasterize = true
        buttonFacebook.layer.rasterizationScale = UIScreen.main.scale
        buttonFacebook.setImage(UIImage(named: "logoFacebook"),
                                for: .normal)
        buttonFacebook.imageEdgeInsets = UIEdgeInsets(top: 0,
                                                      left: 0,
                                                      bottom: 0,
                                                      right: 20)
        buttonFacebook.translatesAutoresizingMaskIntoConstraints = false
        return buttonFacebook
    }()

    private lazy var buttomTwitter: UIButton = {
        let buttonTeitter = UIButton()
        buttonTeitter.setTitle("Twitter", for: .normal)
        buttonTeitter.backgroundColor = UIColor(red: 81/250,
                                                green: 114/250,
                                                blue: 213/250,
                                                alpha: 3)
        buttonTeitter.layer.cornerRadius = 20
        buttonTeitter.layer.shadowColor = UIColor.black.cgColor
        buttonTeitter.layer.shadowOpacity = 0.3
        buttonTeitter.layer.shadowOffset = .zero
        buttonTeitter.layer.shadowRadius = 10
        buttonTeitter.layer.shouldRasterize = true
        buttonTeitter.layer.rasterizationScale = UIScreen.main.scale
        buttonTeitter.setImage(UIImage(named: "logoTwitter"),
                               for: .normal)
        buttonTeitter.imageEdgeInsets = UIEdgeInsets(top: 0,
                                                     left: 0,
                                                     bottom: 0,
                                                     right: 20)
        buttonTeitter.translatesAutoresizingMaskIntoConstraints = false
        return buttonTeitter
    }()

    private lazy var labelDontHaveAccount: UILabel = {
        let labelDontHaveAccount = UILabel()
        labelDontHaveAccount.text = "Dont have account?"
        labelDontHaveAccount.textColor = .systemGray2
        labelDontHaveAccount.font = UIFont.systemFont(ofSize: 12,
                                                      weight: .semibold)
        labelDontHaveAccount.translatesAutoresizingMaskIntoConstraints = false
        return labelDontHaveAccount
    }()

    private lazy var buttonSignUp: UIButton = {
        let buttonSignUp = UIButton()
        buttonSignUp.setTitle("Sign up",
                              for: .normal)
        buttonSignUp.setTitleColor(.systemBlue,
                                   for: .normal)
        buttonSignUp.titleLabel?.font = .systemFont(ofSize: 12,
                                                    weight: .semibold)
        buttonSignUp.translatesAutoresizingMaskIntoConstraints = false
        return buttonSignUp
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        addTapGestureToHideKeyboard()
    }

    private func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view,
                                                action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: - Setups

    private func setupView() {

    }

    private func setupHierarchy() {
        view.addSubviews(
            image,
            labelLogin,
            stack,
            buttonLogin,
            buttonForgotPassword,
            lineLeft,
            labelConnectWith,
            lineRight,
            buttonFacebook,
            buttomTwitter,
            labelDontHaveAccount,
            buttonSignUp
            )
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                                constant: -300),

            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.bottomAnchor.constraint(equalTo: labelLogin.bottomAnchor,
                                          constant: 150),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                           constant: 50),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                            constant: -50),

            textFieldName.heightAnchor.constraint(equalToConstant: 40),

            textFieldPassword.heightAnchor.constraint(equalToConstant: 40),

            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                                 constant: -60),
            buttonLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                 constant: 50),
            buttonLogin.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                  constant: -50),
            buttonLogin.heightAnchor.constraint(equalToConstant: 40),

            buttonForgotPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonForgotPassword.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor,
                                                      constant: 20),
            buttonForgotPassword.heightAnchor.constraint(equalToConstant: 10),

            lineLeft.bottomAnchor.constraint(equalTo: buttonLogin.topAnchor,
                                             constant: 260),
            lineLeft.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                              constant: 40),
            lineLeft.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                               constant: -250),
            lineLeft.widthAnchor.constraint(equalToConstant: 250),
            lineLeft.heightAnchor.constraint(equalToConstant: 0.5),

            labelConnectWith.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor,
                                                  constant: 210),
            labelConnectWith.leadingAnchor.constraint(equalTo: lineLeft.trailingAnchor,
                                                      constant: 10),

            lineRight.bottomAnchor.constraint(equalTo: buttonLogin.topAnchor,
                                              constant: 260),
            lineRight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineRight.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                               constant: 250),
            lineRight.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                constant: -40),
            lineRight.widthAnchor.constraint(equalToConstant: 250),
            lineRight.heightAnchor.constraint(equalToConstant: 0.5),

            buttonFacebook.centerXAnchor.constraint(equalTo: view.centerXAnchor,
                                                    constant: -100),
            buttonFacebook.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                                    constant: 250),
            buttonFacebook.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: 20),
            buttonFacebook.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                     constant: -200),
            buttonFacebook.heightAnchor.constraint(equalToConstant: 37),

            buttomTwitter.centerXAnchor.constraint(equalTo: view.centerXAnchor,
                                                   constant: 100),
            buttomTwitter.centerYAnchor.constraint(equalTo: view.centerYAnchor,
                                                   constant: 250),
            buttomTwitter.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                   constant: 200),
            buttomTwitter.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                    constant: -20),
            buttomTwitter.heightAnchor.constraint(equalToConstant: 37),

            labelDontHaveAccount.topAnchor.constraint(equalTo: buttomTwitter.bottomAnchor,
                                                      constant: 40),
            labelDontHaveAccount.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                          constant: 90),

            buttonSignUp.topAnchor.constraint(equalTo: buttomTwitter.bottomAnchor,
                                              constant: 33.5),
            buttonSignUp.leadingAnchor.constraint(equalTo: labelDontHaveAccount.trailingAnchor,
                                                  constant: 10)
        ])
    }
}
