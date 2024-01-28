import UIKit

class ViewController: UIViewController {

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
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.backgroundColor = .systemIndigo
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.layer.cornerRadius = 20
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        return buttonLogin
    }()

    private lazy var buttonForgotPassword: UIButton = {
        let buttonForgotPassword = UIButton()
        buttonForgotPassword.setTitle("Forgot your password?", for: .normal)
        buttonForgotPassword.titleLabel?.font = .systemFont(ofSize: 12, weight: .semibold)
        buttonForgotPassword.backgroundColor = .clear
        buttonForgotPassword.setTitleColor(.systemGray, for: .normal)
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
        labelConnectWith.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        labelConnectWith.translatesAutoresizingMaskIntoConstraints = false
        return labelConnectWith
    }()

    private lazy var buttonFacebook: UIButton = {
        let buttonFacebook = UIButton()
        buttonFacebook.setTitle("Facebook", for: .normal)
        buttonFacebook.backgroundColor = .systemBlue
        buttonFacebook.layer.cornerRadius = 20
        buttonFacebook.translatesAutoresizingMaskIntoConstraints = false
        return buttonFacebook
    }()

    private lazy var buttomTwitter: UIButton = {
        let buttonTeitter = UIButton()
        buttonTeitter.setTitle("Twitter", for: .normal)
        buttonTeitter.backgroundColor = .systemIndigo
        buttonTeitter.layer.cornerRadius = 20
        buttonTeitter.translatesAutoresizingMaskIntoConstraints = false
        return buttonTeitter
    }()

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
        addTapGestureToHideKeyboard()
    }

    func addTapGestureToHideKeyboard() {
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(view.endEditing))
        view.addGestureRecognizer(tapGesture)
    }

    // MARK: - Setups

    private func setupView() {

    }

    private func setupHierarchy() {
        view.addSubview(image)
        view.addSubview(labelLogin)
        view.addSubview(stack)
        view.addSubview(buttonLogin)
        view.addSubview(buttonForgotPassword)
        view.addSubview(lineLeft)
        view.addSubview(labelConnectWith)
        view.addSubview(lineRight)
        view.addSubview(buttonFacebook)
        view.addSubview(buttomTwitter)
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            labelLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            labelLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -300),

            stack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stack.bottomAnchor.constraint(equalTo: labelLogin.bottomAnchor, constant: 150),
            stack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            stack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),

            textFieldName.heightAnchor.constraint(equalToConstant: 40),

            textFieldPassword.heightAnchor.constraint(equalToConstant: 40),

            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -60),
            buttonLogin.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            buttonLogin.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            buttonLogin.heightAnchor.constraint(equalToConstant: 40),

            buttonForgotPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonForgotPassword.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 20),
            buttonForgotPassword.heightAnchor.constraint(equalToConstant: 10),

            lineLeft.bottomAnchor.constraint(equalTo: buttonLogin.topAnchor, constant: 260),
            lineLeft.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineLeft.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            lineLeft.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -250),
            lineLeft.widthAnchor.constraint(equalToConstant: 250),
            lineLeft.heightAnchor.constraint(equalToConstant: 0.5),

            labelConnectWith.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 210),
            labelConnectWith.leadingAnchor.constraint(equalTo: lineLeft.trailingAnchor, constant: 10),

            lineRight.bottomAnchor.constraint(equalTo: buttonLogin.topAnchor, constant: 260),
            lineRight.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lineRight.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 250),
            lineRight.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40),
            lineRight.widthAnchor.constraint(equalToConstant: 250),
            lineRight.heightAnchor.constraint(equalToConstant: 0.5),

            buttonFacebook.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100),
            buttonFacebook.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            buttonFacebook.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            buttonFacebook.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -200),

            buttomTwitter.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 100),
            buttomTwitter.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 250),
            buttomTwitter.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            buttomTwitter.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
