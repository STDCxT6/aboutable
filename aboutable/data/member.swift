//
//  member.swift
//  abouteam2
//
//  Created by STDC_37 on 16/05/2024.
//

import UIKit

struct TeaMember {
    let photo: UIImage?
    let bgPhoto: UIImage?
    let name: String
    let position: String
    let experience: String
    let education: String
}

extension TeaMember {
    static func sampleTeamData() -> [TeaMember] {
        let member1 = TeaMember(photo: UIImage(named: "headshot"),bgPhoto: UIImage(named: "me"), name: "Sivaji Ganesan", position: "Chief Executive Officer (CEO)", experience: "15 Years Professional Working Experience", education: "Lincoln University College Kuala Lumpur")
        let member2 = TeaMember(photo: UIImage(named: "headshot"),bgPhoto: UIImage(named: "me"), name: "Shahrukh Khan", position: "Chief Financial Officer (CFO)", experience: "12 Years Professional Working Experience", education: "Universiti Teknologi Mara (UiTM)")
        let member3 = TeaMember(photo: UIImage(named: "headshot"),bgPhoto: UIImage(named: "me"), name: "Salman Khan", position: "Chief Operating Officer (COO)", experience: "9 Years Professional Working Experience", education: "Mara-Japan Industry Institute (MJII)")
        let member4 = TeaMember(photo: UIImage(named: "headshot"),bgPhoto: UIImage(named: "me"), name: "Aamir Khan", position: "Chief Technical Officer (CTO)", experience: "10 Years Professional Working Experience", education: "Universiti Teknikal Melaka")
        
        return [member1, member2, member3, member4]

    }
}
