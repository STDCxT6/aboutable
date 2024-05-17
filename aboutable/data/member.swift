//
//  member.swift
//  abouteam2
//
//  Created by STDC_37 on 16/05/2024.
//

import UIKit

struct TeaMember {
    let photo: UIImage?
    let name: String
    let position: String
}

extension TeaMember {
    static func sampleTeamData() -> [TeaMember] {
        let member1 = TeaMember(photo: UIImage(named: "headshot"), name: "Sivaji Ganesan", position: "Chief Executive Officer (CEO)")
        let member2 = TeaMember(photo: UIImage(named: "headshot"), name: "Shahrukh Khan", position: "Chief Financial Officer (CFO)")
        let member3 = TeaMember(photo: UIImage(named: "headshot"), name: "Salman Khan", position: "Chief Operating Officer (COO)")
        let member4 = TeaMember(photo: UIImage(named: "headshot"), name: "Aamir Khan", position: "Chief Technical Officer (CTO)")
        
        return [member1, member2, member3, member4]

    }
}
