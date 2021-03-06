import AppKit
import Files
import Foundation

let projectFolder = Folder.current.path

print("š¢ Enter CSS style (finish last line with `zzz`):")

var textInput = ""
while let line = readLine(strippingNewline: false) {
    if line.starts(with: "zzz") { break }
    textInput += line
}

var colorPalette = try loadColorPalette()
let styleText = style(css: textInput)
print("\nš” Stylesheet definition:")
print(styleText)
print("\nCopied to clipboard\n")

let pasteboard = NSPasteboard.general
pasteboard.declareTypes([NSPasteboard.PasteboardType.string], owner: nil)
pasteboard.setString(styleText, forType: NSPasteboard.PasteboardType.string)
