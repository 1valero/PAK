//
//  Preferences.swift
//  pak
//
//  Created by user137834 on 3/31/18.
//

import Foundation

public class Preferences {
    private var userDefault: UserDefaults
    private static let NOMBRES          = "nombres"
    private static let APELLIDOS        = "apellidos"
    private static let SESSION          = "session"
    
    private static let EMAIL            = "email"
   
    public init() {
        self.userDefault = UserDefaults.standard
    }
    
    public func synch(){
        self.userDefault.synchronize()
    }
    
    public func getNombres() -> String {
        return userDefault.string(forKey: Preferences.NOMBRES)!
    }
    
    public func setNombres(value: String) {
        self.userDefault.set(value, forKey: Preferences.NOMBRES)
    }
    
    public func getApellidos() -> String {
        return userDefault.string(forKey: Preferences.APELLIDOS)!
    }
    
    public func setApellidos(value: String) {
        self.userDefault.set(value, forKey: Preferences.APELLIDOS)
    }
    
    public func isSession() -> Bool {
        return userDefault.bool(forKey: Preferences.SESSION)
    }
    
    public func setSession(value: Bool) {
        self.userDefault.set(value, forKey: Preferences.SESSION)
    }
    
    public func getEmail() -> String {
        return userDefault.string(forKey: Preferences.EMAIL)!
    }
    
    public func setEmail(value: String) {
        self.userDefault.set(value, forKey: Preferences.EMAIL)
    }
    
}
