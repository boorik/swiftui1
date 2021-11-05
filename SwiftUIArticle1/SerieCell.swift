//
//  SerieCell.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import Foundation
import UIKit

class SerieCell: UICollectionViewCell {
    @IBOutlet var title: UILabel!
    @IBOutlet var button: UIButton!
    var callBack: ((String) -> Void)?

    func setup(with serie: String, callback: @escaping (String) -> Void) {
        title.text = serie
        self.callBack = callback
        button.setTitle("Move to top", for: .normal)
        button.addTarget(self, action: #selector(onClick), for: .touchUpInside)
    }
    
    @objc private func onClick() {
        guard let serie = title.text else {
            return
        }
        callBack?(serie)
    }
}
