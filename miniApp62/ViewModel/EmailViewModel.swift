//
//  EmailViewController.swift
//  miniApp62
//
//  Created by 前田航汰 on 2022/07/25.
//

import UIKit
import RxSwift
import RxCocoa

class EmailViewModel {

    var result: Driver<String>  // Driveはイベントを発生させるやつ

    init(emailTextField: Driver<String>) {
        let emailModel = EmailModel()

        result = emailTextField
            .map { text in
                emailModel.addQuestionModel(text: text)
            }
            .asDriver(onErrorJustReturn: "")

    }
}
