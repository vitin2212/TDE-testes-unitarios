import UIKit

class ViewController: UIViewController {

    // Campos de entrada
    var firstNumberTextField: UITextField!
    var secondNumberTextField: UITextField!
    
    // Botão de soma
    var addButton: UIButton!
    
    // Resultado
    var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Inicializando campos de entrada
        firstNumberTextField = UITextField(frame: CGRect(x: 50, y: 150, width: 200, height: 40))
        firstNumberTextField.borderStyle = .roundedRect
        firstNumberTextField.accessibilityLabel = "Campo de número 1"
        firstNumberTextField.accessibilityHint = "Digite o primeiro número."
        firstNumberTextField.isAccessibilityElement = true
        firstNumberTextField.accessibilityTraits = .keyboardKey
        
        // Inicializando o segundo campo de entrada
        secondNumberTextField = UITextField(frame: CGRect(x: 50, y: 200, width: 200, height: 40))
        secondNumberTextField.borderStyle = .roundedRect
        secondNumberTextField.accessibilityLabel = "Campo de número 2"
        secondNumberTextField.accessibilityHint = "Digite o segundo número."
        secondNumberTextField.isAccessibilityElement = true
        secondNumberTextField.accessibilityTraits = .keyboardKey
        
        // Inicializando o botão de soma
        addButton = UIButton(type: .system)
        addButton.setTitle("Somar", for: .normal)
        addButton.frame = CGRect(x: 50, y: 260, width: 200, height: 50)
        addButton.accessibilityLabel = "Botão de soma"
        addButton.accessibilityHint = "Clique para somar os números inseridos."
        addButton.isAccessibilityElement = true
        addButton.accessibilityTraits = .button
        
        // Inicializando o campo de resultado
        resultLabel = UILabel(frame: CGRect(x: 50, y: 320, width: 200, height: 40))
        resultLabel.text = "Resultado: "
        resultLabel.accessibilityLabel = "Resultado da soma"
        resultLabel.isAccessibilityElement = true
        resultLabel.accessibilityTraits = .staticText
        
        // Adicionando os elementos à view
        view.addSubview(firstNumberTextField)
        view.addSubview(secondNumberTextField)
        view.addSubview(addButton)
        view.addSubview(resultLabel)
        
        // Ação para somar os números
        addButton.addTarget(self, action: #selector(sumNumbers), for: .touchUpInside)
        
        // Garantir que a ordem de navegação do VoiceOver está correta
        UIAccessibility.post(notification: .layoutChanged, argument: firstNumberTextField)
    }
    
    @objc func sumNumbers() {
        // Lógica para somar os números inseridos
        guard let firstNumber = Double(firstNumberTextField.text ?? ""),
              let secondNumber = Double(secondNumberTextField.text ?? "") else {
            resultLabel.text = "Por favor, insira números válidos."
            return
        }
        
        let result = firstNumber + secondNumber
        resultLabel.text = "Resultado: \(result)"
        
        // Atualizar o resultado no VoiceOver
        UIAccessibility.post(notification: .announcement, argument: resultLabel.text)
    }
}

