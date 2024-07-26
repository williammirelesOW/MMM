//
//  Conversation.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

/*import Foundation
import OpenWebSDK
import SwiftUI

public protocol OWAdditionalSettingsProtocol {

    var preConversationSettings: OWPreConversationSettingsProtocol { get }

    var fullConversationSettings: OWConversationSettingsProtocol { get }

    var commentCreationSettings: OWCommentCreationSettingsProtocol { get }

    var commentThreadSettings: OWCommentThreadSettingsProtocol { get }

}

var manager: OWManagerProtocol = OpenWeb.manager

let flows: OWUIFlows = manager.ui.flows

let conversationSettings: OWConversationSettingsProtocol = OWConversationSettings(style: .regular)

let additionalSettings: OWAdditionalSettingsProtocol = OWAdditionalSettings(fullConversationSettings: conversationSettings)

let conversationClosure: OWDefaultCompletion = { result in
    switch result {
      case .success(_):
      case .failure(let error):
        // Handle the error / Show appropriate user UI
        break
    }
}

flows.conversation(
  postId: "torres",
  article: article,
  presentationalMode: .present(viewController: myVC),
  additionalSettings: OWConversationSettingsProtocol.regular,
  completion: conversationClosure
)
*/
