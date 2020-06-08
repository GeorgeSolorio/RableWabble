//
//  QuestionGroupCell.swift
//  RableWabble
//
//  Created by George Solorio on 6/5/20.
//  Copyright © 2020 George Solorio. All rights reserved.
//

import UIKit
import Combine

public class QuestionGroupCell: UITableViewCell {
    @IBOutlet public var titleLabel: UILabel!
    @IBOutlet public var percentageLabel: UILabel!
    public var percentageSubscriber: AnyCancellable?
}
