//
//  GreenIcon.swift
//  VirtualServersMaps
//
//  Created by Mohamed on 11/11/19.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

final class GreenIcon: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        print("Green Icon")
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    private func commonInit() {
        guard let view = UINib(nibName: "GreenIcon", bundle: nil).instantiate(withOwner: nil, options: nil).first as? UIView else {
            return
    }
        view.frame = bounds
        view.autoresizingMask = [.flexibleHeight , .flexibleHeight]
        addSubview(view)
    }
}
