//
//  TestCell.swift
//  CellConfigurationTestProject
//
//  Created by user on 24.02.2021.
//

import UIKit

class TestCell: UITableViewCell {
    
//    override func updateConfiguration(using state: UICellConfigurationState) {
//        super.updateConfiguration(using: state)
//        
//        var contentConfig = defaultContentConfiguration().updated(for: state)
//        if state.isEditing {
//            contentConfig.text = "cellState: isEditing"
//        } else if state.isSelected {
//            contentConfig.text = "cellState: isSelected"
//        } else if state.isHighlighted {
//            contentConfig.text = "cellState: isHighlighted"
//        } else if state.isSwiped {
//            contentConfig.text = "cellState: isSwiped"
//        } else if state.isFocused {
//            contentConfig.text = "cellState: isFocused"
//        } else if state.isDisabled {
//            contentConfig.text = "cellState: isDisabled"
//        } else if state.isReordering {
//            contentConfig.text = "cellState: isReordering"
//        } else if state.isExpanded {
//            contentConfig.text = "cellState: isExpanded"
//        } else {
//            contentConfig.text = "cellState: normal"
//        }
//        contentConfig.image = UIImage(systemName: "bell")
//        var backgroundConfig = backgroundConfiguration?.updated(for: state)
//        backgroundConfig?.backgroundColor = .white
//        
//        if state.isHighlighted || state.isSelected {
//            backgroundConfig?.backgroundColor = .gray
//            contentConfig.textProperties.color = .white
//            contentConfig.imageProperties.tintColor = .white
//        }
//        
//        contentConfiguration = contentConfig
//        backgroundConfiguration = backgroundConfig// can change to UIBackgroundConfiguration.listPlainCell() or other properties
//    }
}
