//
//  UserInfo.swift
//  HomeWork 2.3 (Login App)
//
//  Created by Алексей Синяговский on 12.03.2022.
//

import Foundation

struct UserInfo {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInfo() -> UserInfo {
        UserInfo(
            login: "User",
            password: "Password",
            person: Person(
                name: "Aleksei",
                surName: "Siniagovskii",
                firstImage: "userPhotoOne",
                secondImage: "userPhotoTwo",
                thirdImage: "userPhotoThree",
                description:
"""
Hello, my name is Alexey! I'm 28 years old. I'm from Barnaul, it's a small city in Siberia. Yes, it’s very cold here) I work for myself, we can say that we have a family business in the field of metrology, and to be more specific, this is more connected with heat energy meters. In fact, I am an engineer who manages a business, and in my free time I practice and at the same time teach the most difficult language in the world, this is Chinese. I really like teaching, because at this very moment you realize that you are helping people achieve certain goals and help a dream come true. \n I have been to China many times. Lived there, studied, worked. \n I learned Chinese because I am a very stubborn and purposeful person, so I decided to master the profession of a developer. Well, I chose the direction, because I really like the Apple company, its policy and, of course, devices. \n I love to travel very much, I have visited many countries of this world and it is impossible to say where it was best! \n I do a lot of reading books. Mostly I like literature about financial literacy. \n Another hobby of mine is, of course, sports, I won’t say that I am an athlete with gold medals, but I keep my body in good shape.
"""
            )
        )
    }
}

struct Person {
    let name: String
    let surName: String
    let firstImage: String
    let secondImage: String
    let thirdImage: String
    let description: String
    
    var fullName: String {
        "\(name) \(surName)"
    }
}
