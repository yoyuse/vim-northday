#!/usr/bin/xcrun swift
//
// 2021-03-20 mkterminal.swift by yoyuse, based on:
//
// Copyright © 2016 Leon Breedt
// Ported to Swift 5 by Pablo Morelli 2019
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


import Cocoa

/// Enumerates the colors in an Xresources color scheme.
enum XresourcesColors: String {
    case color0 = "color0"
    case color1 = "color1"
    case color2 = "color2"
    case color3 = "color3"
    case color4 = "color4"
    case color5 = "color5"
    case color6 = "color6"
    case color7 = "color7"
    case color8 = "color8"
    case color9 = "color9"
    case color10 = "color10"
    case color11 = "color11"
    case color12 = "color12"
    case color13 = "color13"
    case color14 = "color14"
    case color15 = "color15"
    case foreground = "foreground"
    case background = "background"
    case bold = "bold"
    case selection = "selection"
    case cursorColor = "cursorColor"
}

/// Enumerates the colors in a Terminal.app color scheme.
enum TerminalColors: String {
    case ansiBlack           = "ANSIBlackColor"
    case ansiRed             = "ANSIRedColor"
    case ansiGreen           = "ANSIGreenColor"
    case ansiYellow          = "ANSIYellowColor"
    case ansiBlue            = "ANSIBlueColor"
    case ansiMagenta         = "ANSIMagentaColor"
    case ansiCyan            = "ANSICyanColor"
    case ansiWhite           = "ANSIWhiteColor"
    case ansiBrightBlack     = "ANSIBrightBlackColor"
    case ansiBrightRed       = "ANSIBrightRedColor"
    case ansiBrightGreen     = "ANSIBrightGreenColor"
    case ansiBrightYellow    = "ANSIBrightYellowColor"
    case ansiBrightBlue      = "ANSIBrightBlueColor"
    case ansiBrightMagenta   = "ANSIBrightMagentaColor"
    case ansiBrightCyan      = "ANSIBrightCyanColor"
    case ansiBrightWhite     = "ANSIBrightWhiteColor"
    case background          = "BackgroundColor"
    case text                = "TextColor"
    case boldText            = "TextBoldColor"
    case selection           = "SelectionColor"
    case cursor              = "CursorColor"
}

// Mapping of Xresources colors onto correspoinding Terminal.app colors.
let xresourcesColor2TerminalColor =
  [
   XresourcesColors.color0: TerminalColors.ansiBlack,
   XresourcesColors.color1: TerminalColors.ansiRed,
   XresourcesColors.color2: TerminalColors.ansiGreen,
   XresourcesColors.color3: TerminalColors.ansiYellow,
   XresourcesColors.color4: TerminalColors.ansiBlue,
   XresourcesColors.color5: TerminalColors.ansiMagenta,
   XresourcesColors.color6: TerminalColors.ansiCyan,
   XresourcesColors.color7: TerminalColors.ansiWhite,
   XresourcesColors.color8: TerminalColors.ansiBrightBlack,
   XresourcesColors.color9: TerminalColors.ansiBrightRed,
   XresourcesColors.color10: TerminalColors.ansiBrightGreen,
   XresourcesColors.color11: TerminalColors.ansiBrightYellow,
   XresourcesColors.color12: TerminalColors.ansiBrightBlue,
   XresourcesColors.color13: TerminalColors.ansiBrightMagenta,
   XresourcesColors.color14: TerminalColors.ansiBrightCyan,
   XresourcesColors.color15: TerminalColors.ansiBrightWhite,
   XresourcesColors.background: TerminalColors.background,
   XresourcesColors.foreground: TerminalColors.text,
   XresourcesColors.cursorColor: TerminalColors.cursor,
   XresourcesColors.selection: TerminalColors.selection,
   XresourcesColors.bold: TerminalColors.boldText,
   ]

/// Converts an Xresources color scheme file (.Xresources), into a Terminal.app color scheme file (.terminal)
func convertToTerminalColors(xresourcesFile: String, terminalFile: String) {
    if let xresourcesScheme = nsDictionary(contentsOfFile: xresourcesFile) {
        print("\(terminalFile)")
        let name = terminalFile.ns.lastPathComponent.ns.deletingPathExtension
        let terminalScheme = convert(xresourcesColorScheme: xresourcesScheme, toTerminalSchemeWithName: name)
        terminalScheme.write(toFile: terminalFile, atomically: true)
    } else {
        print("unable to load \(xresourcesFile)")
    }
}

/// Read an Xresources color scheme file (.Xresources), and return the contents as NSDictionary
func nsDictionary(contentsOfFile file: String) -> NSDictionary? {
    guard let str = try? String(contentsOfFile: file) else {return nil}
    let ary = str.split(separator: "\n").map {String($0)}
    let dic = NSMutableDictionary()
    for str in ary {
        var res = str.match(#"^\s*!.*$"#)
        if res.count == 1 {continue}
        // cursorOpacity
        res = str.match(#"Terminal\.(cursorOpacity):\s*(.+)"#)
        if res.count == 3 {
            dic[res[1]] = Double(res[2]) ?? 1.0
            continue
        }
        // /cursorOpacity
        res = str.match(#"\*\.?(.+?):\s*#([\da-f]{2})([\da-f]{2})([\da-f]{2})"#, options: .caseInsensitive)
        if res.count != 5 {continue}
        dic[res[1]] = [res[2], res[3], res[4]].map {str in Double(Int(str, radix: 16) ?? 0) / Double(255)}
    }
    return dic
}

/// Converts an Xresources color scheme dictionary into a Terminal.app color scheme dictionary.
func convert(xresourcesColorScheme: NSDictionary, toTerminalSchemeWithName name: String) -> NSDictionary {
    var terminalColorScheme: [String: Any] = [
//        "CommandString" : "",
//        "CursorBlink" : false,
//        "CursorType" : 0,
//        "FontAntialias" : true,
        "ProfileCurrentVersion" : 2.07,
//        "RunCommandAsShell" : true,
        "ShowCommandKeyInTitle" : true,
        "UseBoldFonts" : true,
        "UseBrightBold" : true,
        "name" : name,
//        "noWarnProcesses" : [
//            ["ProcessName" : "screen"],
//            ["ProcessName" : "tmux"],
//        ],
        "shellExitAction": 1,
        "type" : "Window Settings",
        "useOptionAsMetaKey" : true,
    ]

    // SF Mono is pretty sweet.
    if let font = archivedFontWithName(name: "Menlo Regular", size: 12) {
        terminalColorScheme["Font"] = font
    }

    //print(xresourcesColorScheme)
    for (rawKey, rawValue) in xresourcesColorScheme {
        guard let name = rawKey as? String else { continue }
        //guard let xresourcesDict = rawValue as? NSDictionary else { continue }
        guard let xresourcesDict = rawValue as? NSArray else { continue }
        guard let xresourcesKey = XresourcesColors(rawValue: name) else { continue }
        guard let terminalKey = xresourcesColor2TerminalColor[xresourcesKey] else { continue }
        let (r, g, b) = (
            (xresourcesDict[0] as? CGFloat) ?? CGFloat(0),
            (xresourcesDict[1] as? CGFloat) ?? CGFloat(0),
            (xresourcesDict[2] as? CGFloat) ?? CGFloat(0)
        )

        // cursorOpacity
        // let color = NSColor(deviceRed: r, green: g, blue: b, alpha: 1)
        let alpha: CGFloat = (name == "cursorColor") ? xresourcesColorScheme["cursorOpacity"] as? CGFloat ?? 1.0 : 1.0
        let color = NSColor(deviceRed: r, green: g, blue: b, alpha: alpha)
        // /cursorOpacity
        // let color = NSColor(calibratedRed: r, green: g, blue: b, alpha: 1)
        // let color = NSColor(red: r, green: g, blue: b, alpha: 1)
        let data = try! NSKeyedArchiver.archivedData(withRootObject: color, requiringSecureCoding: true)

        terminalColorScheme[terminalKey.rawValue] = data
    }

    return terminalColorScheme as NSDictionary
}

/// Creates an `NSData` representation of an `NSFont`.
func archivedFontWithName(name: String, size: CGFloat) -> Data? {
    if let font = NSFont(name: name, size: size) {
        return try! NSKeyedArchiver.archivedData(withRootObject: font, requiringSecureCoding: true)
    }
    return nil
}

extension String {

    /// Gets the canonical version of a path.
    var fullPath: String {
        get {
            let path = ns.standardizingPath
            var directory = ns.deletingLastPathComponent
            if directory.utf8.count == 0 {
                directory = FileManager.default.currentDirectoryPath
            }
            return directory.ns.appendingPathComponent(path)
        }
    }

    /// Convenience property for accessing this string as an `NSString`.
    var ns: NSString {
        return self as NSString
    }

}

extension String {
    func match(_ pattern: String, options: NSRegularExpression.Options = []) -> [String] {
        guard let regex = try? NSRegularExpression(pattern: pattern, options: options),
              let matched = regex.firstMatch(in: self, range: NSRange(location: 0, length: self.count))
        else { return [] }
        return (0 ..< matched.numberOfRanges).map {
            NSString(string: self).substring(with: matched.range(at: $0))
        }
    }
}

// Entry point.
let args = CommandLine.arguments.dropFirst()
if args.count > 0 {
    for xresourcesFile in args {
        let path = xresourcesFile.fullPath
        let folder = path.ns.deletingLastPathComponent
        let schemeName = path.ns.lastPathComponent.ns.deletingPathExtension
        let terminalPath = "\(folder)/\(schemeName).terminal"
        convertToTerminalColors(xresourcesFile: path, terminalFile: terminalPath)
    }
} else {
    print("usage: mkterminal.swift FILE.Xresources [...]")
}
