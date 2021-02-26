//
//  CustomContentView.swift
//  CellConfigurationTestProject
//
//  Created by user on 25.02.2021.
//

import UIKit

class CustomContentView: UIView, UIContentView {
    let switchView = UISwitch()
    
    var configuration: UIContentConfiguration {
        didSet {
            config()
        }
    }
    
    init(configuration: UIContentConfiguration) {
        self.configuration = configuration
        super.init(frame:.zero)
        switchView.translatesAutoresizingMaskIntoConstraints = true
        self.addSubview(switchView)
        switchView.center = CGPoint(x:self.bounds.midX, y:self.bounds.midY)
        switchView.autoresizingMask = [.flexibleTopMargin, .flexibleBottomMargin, .flexibleLeftMargin, .flexibleRightMargin]
        config()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func config() {
        let configurationIsOn = (configuration as? CustomListCellConfiguration)?.isOn ?? false
        switchView.isOn = configurationIsOn
        backgroundColor = configurationIsOn ? .green : .red
    }
}
