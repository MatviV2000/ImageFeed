import UIKit

final class ImagesListCell: UITableViewCell {
    
    //MARK: - ID
    
    static let reuseIdentifier = "ImagesListCell"
    
    //MARK: - Cell Outlets
    
    @IBOutlet weak var cellLikeButton: UIButton!
    @IBOutlet weak var cellDateLabel: UILabel!
    @IBOutlet weak var cellImage: UIImageView!
}
