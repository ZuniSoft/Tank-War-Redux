//
//  Extensions.swift
//  Tank War Redux
//
//  Created by Keith Davis on 11/3/17.
//  Copyright © 2017 Keith Davis. All rights reserved.
//
//  Note: PeerID code found on Gist.
//

import MultipeerConnectivity
import OSLog

extension Collection {
    
    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension UserDefaults {
    /// Keys for storing a reusable peerID.
    fileprivate static let kLocalPeerDisplayNameKey = "kLocalPeerDisplayNameKey"
    fileprivate static let kLocalPeerIDKey = "kLocalPeerIDKey"
}

extension MCPeerID {
    /// Returns a reusable PeerID for the local device that will be stable over time.
    public static func reusableInstance(withDisplayName displayName: String) -> MCPeerID {
        
        let defaults = UserDefaults.standard
        
        func newPeerID() -> MCPeerID {
            let newPeerID = MCPeerID(displayName: displayName)
            newPeerID.save(in: defaults)
            return newPeerID
        }
        
        let oldDisplayName = defaults.string(forKey: UserDefaults.kLocalPeerDisplayNameKey)
        
        if oldDisplayName == displayName {
        
            guard let peerData = defaults.data(forKey: UserDefaults.kLocalPeerIDKey), let peerID = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(peerData) as? MCPeerID
            
            else {
                return newPeerID()
            }
            return peerID
        } else {
            return newPeerID()
        }
    }
    
    
    private func save(in userDefaults: UserDefaults) {
        /// Archives and saves the current peer identifier in the specified user defaults for later reuse.
        do {
            let peerIDData = try NSKeyedArchiver.archivedData(withRootObject: self, requiringSecureCoding: false)
            userDefaults.set(peerIDData, forKey: UserDefaults.kLocalPeerIDKey)
            userDefaults.set(displayName, forKey: UserDefaults.kLocalPeerDisplayNameKey)
            userDefaults.synchronize()
        } catch {
            os_log("Failed to save peerID...", log: OSLog.default, type: .error)
        }
    }
}
