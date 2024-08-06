//
//  Conversation.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import OpenWebSDK
import SwiftUI

var manager: OWManagerProtocol = OpenWeb.manager

let flows: OWUIFlows = manager.ui.flows

let preConversationSettings: OWPreConversationSettingsProtocol = OWPreConversationSettings(style: .regular)

let additionalSettings: OWAdditionalSettingsProtocol = OWAdditionalSettings(preConversationSettings: preConversationSettings)

let preConversationClosure: OWViewCompletion = { [weak self] result in
    guard let self = self else { return }

    switch result {
      case .success(let preConversationView):
        self.view.addSubview(preConversationView)
        preConversationView.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(self.myOwnViewAbove.snp.bottom)
            make.bottom.lessThanOrEqualTo(self.myOwnViewBelow.snp.top)
        }

      case .failure(let error):
        // Handle the error or show appropriate user UI
        break
    }
}

flows.preConversation(
  postId: "torres",
  article: article,
  presentationalMode: OWModelPresentationStyle),
  additionalSettings: additionalSettings,
  completion: preConversationClosure
)
