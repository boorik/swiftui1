//
//  SeriesViewController+UIControllerRepresentable.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import Foundation
import SwiftUI

extension SeriesViewController: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> SeriesViewController {
        let storyboard = UIStoryboard(name: "Storyboard", bundle: .main)
        let viewController = storyboard.instantiateViewController(identifier: Self.identifier) as! SeriesViewController
        return viewController
    }

    func updateUIViewController(_ uiViewController: SeriesViewController, context: Context) { }
}
