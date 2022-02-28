import Foundation
import UIKit
import SnapKit

/**
How can we store the input data into the model?
How can we store the character data on the device?
How can add validaton before we send the data?
How can we make the keyboard go away?
How can we add more fields while using less constraints?
Can we store more than one character and list them?
 
 */

class NewCharacterView: UIView {
    
    lazy var nameLabel = UILabel()
    lazy var nameInput = UITextField()
    
    lazy var roleLabel = UILabel()
    lazy var roleInput = UITextField()
    
    func setupView() {
        
        self.backgroundColor = .cyan
        // constraints
        [nameLabel, nameInput, roleLabel, roleInput].forEach { addSubview($0) }
        nameLabel.snp.makeConstraints {
            make in
            make.top.equalTo(safeAreaLayoutGuide).offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        nameLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        nameInput.snp.makeConstraints{
            make in
            make.firstBaseline.equalTo(nameLabel.snp.firstBaseline)
            make.leading.equalTo(nameLabel.snp.trailing).offset(10)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(nameLabel.snp.height)
            make.width.greaterThanOrEqualTo(60)
        }
        nameInput.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        roleLabel.snp.makeConstraints {
            make in
            make.top.equalTo(nameLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
        roleInput.snp.makeConstraints{
            make in
            make.firstBaseline.equalTo(roleLabel.snp.firstBaseline)
            make.leading.equalTo(roleLabel.snp.trailing).offset(10)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(roleLabel.snp.height)
            make.width.greaterThanOrEqualTo(60)
        }
        // values
        nameLabel.text = "Name:"
        nameInput.backgroundColor = .white
        roleLabel.text = "Role:"
        roleInput.backgroundColor = .white
    }
}

class NewCharacterViewController: UIViewController {
    
    override func loadView() {
        self.view = NewCharacterView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (self.view as! NewCharacterView).setupView()
        title = "New Character"
    }
}
