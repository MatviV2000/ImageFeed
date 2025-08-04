import UIKit

extension ImagesListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension ImagesListViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ImagesListCell.reuseIdentifier, for: indexPath)
        
        guard let imageListCell = cell as? ImagesListCell else {
            print("ошибка привода типа")
            return UITableViewCell()
        }
        configCell(for: imageListCell)
        return imageListCell
    }
    
    
}

extension ImagesListViewController {
    func configCell(for cell: ImagesListCell) { }
}

class ImagesListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(ImagesListCell.self,
                           forCellReuseIdentifier: ImagesListCell.reuseIdentifier)
        
        tableView.rowHeight = 200
    }

    @IBOutlet private var tableView: UITableView!
}

