//
//  Article.swift
//  MirelesMidweekMeals
//
//  Created by William Mireles on 26/07/2024.
//

import Foundation
import OpenWebSDK
import SwiftUI

let articleSettings: OWArticleSettingsProtocol = OWArticleSettings(
    section: "coolSection",
    headerStyle: .regular,
    readOnlyMode: .server
)

let articleExtraData = OWArticleExtraData(
    url: URL(string: "https://www.spotim.name/williamTesting/Torres.html")!,
    title: "Fernando Torres: A football legend",
    subtitle: "Torres",
    thumbnailUrl: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0F63Tw4Y4ZqdeZKC_-0e3ZmMQn76QiCjmo_zAemzjFgTlxZDld8jMlJGoaT-v4luyCak&usqp=CAU")!
)

let article: OWArticleProtocol = OWArticle(
    articleInformationStrategy: .local(data: articleExtraData),
    additionalSettings: articleSettings
)
