import UIKit


class LargeCategoryCell: CategoryCell {
    
    
    
    // MARK: - Properties
    static let largeIdentifier = "largeCategoryCellIdentifier"
    
    
    
    // MARK: - Overrides
    override func setupViews() {
        super.setupViews()
        appCollectionView.register(LargeAppCell.self, forCellWithReuseIdentifier: LargeAppCell.largeIdentifier)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LargeAppCell.largeIdentifier, for: indexPath) as! LargeAppCell
        
        cell.app = appCategory?.apps?[indexPath.item]
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 220, height: self.frame.height - 30)
    }
    
}
