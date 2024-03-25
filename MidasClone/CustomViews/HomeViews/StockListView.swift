//
//  StockListView.swift
//  MidasClone
//
//  Created by Salih Gün on 25.03.2024.
//

import UIKit

class StockListView: UIView {
    let title = UILabel()
    let addnew = UILabel()
    var collectionView: UICollectionView!
    
    let padding: CGFloat = 12

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureContent()
        configureCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = Colors.backgroundColor
        addSubviews(title,addnew)
    }
    
    func configureContent() {
        title.text = "Listelerim"
        title.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        
        addnew.text = "Takip Listesi Ekle"
        addnew.textColor = Colors.darkBlue
        addnew.font = UIFont.systemFont(ofSize: 16, weight: .semibold)

        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor, constant: padding*2),
            title.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding*2),
            
            addnew.centerYAnchor.constraint(equalTo: title.centerYAnchor),
            addnew.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding*2),
            

        ])
    }
    
    func configureCollectionView() {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: padding, bottom: 0, right: padding)
        layout.itemSize = CGSize(width: 140, height: 110)
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: frame, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(ListCell.self, forCellWithReuseIdentifier: ListCell.reuseID)
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.backgroundColor = .clear
        addSubviews(collectionView)
        
        NSLayoutConstraint.activate([
               collectionView.topAnchor.constraint(equalTo: title.bottomAnchor),
               collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
               collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
               collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -padding)
           ])
    }
}

extension StockListView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stockList.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ListCell.reuseID, for: indexPath) as! ListCell
        cell.set(item: stockList[indexPath.row])
        return cell
    }

}
