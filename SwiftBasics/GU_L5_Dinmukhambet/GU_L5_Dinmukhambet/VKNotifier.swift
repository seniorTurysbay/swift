//
//  VKNotifier.swift
//  GU_L5_Dinmukhambet
//
//  Created by Dinmukhambet Turysbay on 10.05.2022.
//

import Foundation

class VKNotifier{
    func getData() -> String? {
        return readLine()
    }
}

extension VKNotifier: Notifier{

    func sendBirthdayNotification(userName: String) {
        guard let login = getData(), let password = getData() else{
            return
        }
        print(login)
        print(password)
        print("\(userName) happy BDay")
    }
}
