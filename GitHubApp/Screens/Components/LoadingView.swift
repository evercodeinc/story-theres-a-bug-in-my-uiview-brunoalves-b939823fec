import UIKit

final class LoadingView: UIView {
    
    // MARK - Private Properties
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.isHidden = false
        return view
    }()
    
    // MARK - Init
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        addSubviews()
        configureConstraints()
    }
    
    @available(*,unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK - Internal Methods
    
    func addSubviews() {
        addSubview(activityIndicatorView)
    }
    
    func configureConstraints() {
        NSLayoutConstraint.activate([
            activityIndicatorView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            activityIndicatorView.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
}
