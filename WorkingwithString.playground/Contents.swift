import UIKit

var str = "Hello,"
// creating and concatenating string
var append = str + " Unnat!"
for c in append{ // append.character
    print(c)
}
// type string : NSString
let nsstring =  NSString(string: append) //NS stands for NEXT-STRING and NEXT was the company founded by jobs.
nsstring.substring(to: 5) // like python string substring[:5]
nsstring.substring(from: 4) // like python string substring[4:]

// Just getting the name
var name_with_ex = nsstring.substring(from: 7) as NSString
print(name_with_ex.substring(to: 5))
//Better way of doing it.
print(nsstring.substring(with:  NSMakeRange(7, 5)))

// checking whether the a string contains a substring.
if nsstring.contains("Unnat"){
    print("nsstring contains name Unnat!")
}

// spliting the string with space('\ ') character.
// works as .split() method in python
print(nsstring.components(separatedBy: " "))

nsstring.uppercased
nsstring.lowercased

// Summary
// methods that we covered
/*
 1. NSString.substring(from:)
 2. NSString.substring(to:)
 3. NSString.substring(with: NSMakeRange(from:,len:))
 4. NSString.components(seperatedBy:"")
 5. NSString.lowercased
 6. NSString.uppercased
 */

