import Cocoa

let defaults = UserDefaults.standard
let dictionaryKey = "myDictionary"

defaults.set(0.25, forKey: "Volume")
defaults.set(true, forKey: "MusicOn")
defaults.set("Angela", forKey: "PlayerName")
defaults.set(Date(), forKey: "AppLastOpenByUser")

let array = [1, 2, 3]
defaults.set(array, forKey: "myArray")

let dic = ["Title": "타이틀입니다.", "desc": "desc입니다."]
defaults.set(dic, forKey: dictionaryKey)






let volume = defaults.float(forKey: "Volume")
let appLastOpen = defaults.object(forKey: "AppLastOpenByUser")
let myArray = defaults.array(forKey: "myArray") as! [Int]
let myDic = defaults.dictionary(forKey: dictionaryKey)
