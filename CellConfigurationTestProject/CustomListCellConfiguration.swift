//
//  CustomListCellConfiguration.swift
//  CellConfigurationTestProject
//
//  Created by user on 25.02.2021.
//

import UIKit


struct CustomListCellConfiguration: UIContentConfiguration {
    var isOn: Bool = false
    
    func makeContentView() -> UIView & UIContentView {
        CustomContentView(configuration: self)
    }
    
    func updated(for state: UIConfigurationState) -> CustomListCellConfiguration {
        return CustomListCellConfiguration(isOn: state.traitCollection.horizontalSizeClass == .compact)
    }
}

