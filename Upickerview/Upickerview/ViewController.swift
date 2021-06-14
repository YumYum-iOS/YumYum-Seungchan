import UIKit
 
class ViewController: UIViewController {
    
    //배열 추가
    var array = ["태현", "승찬", "예지"]
    
    var textField: UITextField!
    var toolBar: UIToolbar!
    var exitBtn: UIBarButtonItem!
    var pickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField = UITextField()
        textField.placeholder = "YumYum"
        textField.borderStyle = .roundedRect
        textField.frame = CGRect(x: 157, y: 100, width: 100, height: 30)
        view.addSubview(textField)
        
        pickerView = UIPickerView()
        pickerView.delegate = self
        /// 텍스트필드에 뷰를 등록하면, picker는 자동으로 화면 하단에 나타남
        textField.inputView = pickerView
        
        exitBtn = UIBarButtonItem()
        exitBtn.title = "exit"
        exitBtn.target = self
        exitBtn.action = #selector(pickerExit)
        
        toolBar = UIToolbar()
        toolBar.tintColor = .darkGray
        /// toolbar는 높이만 정해주면 됨 (나머지는 고정된 값 할당) - 높이는 35가 적절
        toolBar.frame = CGRect(x: 0, y: 0, width: 0, height: 35)
        toolBar.setItems([exitBtn], animated: true)
        
        textField.inputAccessoryView = toolBar
    }
 
    @objc func pickerExit() {
        /// picker와 같은 뷰를 닫는 함수
        self.view.endEditing(true)
    }
    
}
 
extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    //한 개의 리스트만 보여줌.
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //피커뷰에 보여줄 값들을 정함.
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return array[row]
    }
    //보여줄 요소들의 개수 지정
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return array.count
    }
    //피커뷰의 값을 선택했을 때의 이벤트
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(array[row])
    }
}
