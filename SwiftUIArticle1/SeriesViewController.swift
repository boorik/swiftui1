//
//  SeriesViewController.swift
//  SwiftUIArticle1
//
//  Created by Vincent BLANCHET on 22/06/2021.
//

import UIKit

final class SeriesViewController: UIViewController {

    var data: [String] = [
        "The Wire",
        "Breaking Bad",
        "Dexter",
        "Queen of the South",
        "The OA",
        "Stranger Things",
        "Narcos",
        "True Detective",
        "Game of Thrones"
    ]
    static let identifier = "SeriesViewController"
    static let reuseIdentifier = "SerieCell"

    @IBOutlet var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
    }

    func setToTop(serie: String) {
        data.removeAll { value in
            value == serie
        }
        data.insert(serie, at: 0)
        collectionView.reloadData() // <= needed to update the view
    }
}

extension SeriesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Self.reuseIdentifier, for: indexPath)
                as? SerieCell else {
            return UICollectionViewCell()
        }
        cell.setup(with: data[indexPath.row], callback: setToTop(serie:))
        return cell
    }
}

extension SeriesViewController: UICollectionViewDelegate {}
extension SeriesViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {

        CGSize(width: collectionView.frame.size.width, height: 50)
    }
}
