//
//  CoinPriceTouchBar.swift
//  CoinPriceBar
//
//  Created by Thanh Pham on 12/12/17.
//  Copyright © 2017 Thanh Pham. All rights reserved.
//

import Cocoa

class CoinPriceTouchBar: NSTouchBar {

  var BTCPrice: String? {
    didSet {
      bitCoinItem.price = BTCPrice
    }
  }

  var ETHPrice: String? {
    didSet {
      ethereumItem.price = ETHPrice
    }
  }

  var LTCPrice: String? {
    didSet {
      liteCoinItem.price = LTCPrice
    }
  }

  let bitCoinItem = CoinPriceTouchBarItem(coin: .BTC)
  let ethereumItem = CoinPriceTouchBarItem(coin: .ETH)
  let liteCoinItem = CoinPriceTouchBarItem(coin: .LTC)

  override init() {
    super.init()
    templateItems = NSSet(objects: bitCoinItem, ethereumItem, liteCoinItem) as! Set
    defaultItemIdentifiers = [.fixedSpaceSmall, .flexibleSpace, bitCoinItem.identifier, .flexibleSpace, ethereumItem.identifier, .flexibleSpace, liteCoinItem.identifier, .flexibleSpace, .fixedSpaceSmall]
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError()
  }
}
