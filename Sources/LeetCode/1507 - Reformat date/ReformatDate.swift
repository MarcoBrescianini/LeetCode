import Foundation

//Given a date string in the form Day Month Year, where:
//
//Day is in the set {"1st", "2nd", "3rd", "4th", ..., "30th", "31st"}.
//Month is in the set {"Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"}.
//Year is in the range [1900, 2100].
//Convert the date string to the format YYYY-MM-DD, where:
//
//YYYY denotes the 4 digit year.
//MM denotes the 2 digit month.
//DD denotes the 2 digit day.
//
//
//Example 1:
//
//Input: date = "20th Oct 2052"
//Output: "2052-10-20"
//Example 2:
//
//Input: date = "6th Jun 1933"
//Output: "1933-06-06"
//Example 3:
//
//Input: date = "26th May 1960"
//Output: "1960-05-26"
//
//
//Constraints:
//
//The given dates are guaranteed to be valid, so no error handling is necessary.

struct ReformatDate {

    func reformatDate(_ date: String) -> String {
        let components = date.components(separatedBy: " ")
        let day = components[0].dropLast(2)
        let month = switch components[1] {
            case "Jan" : "01"
            case "Feb" : "02"
            case "Mar" : "03"
            case "Apr" : "04"
            case "May" : "05"
            case "Jun" : "06"
            case "Jul" : "07"
            case "Aug" : "08"
            case "Sep" : "09"
            case "Oct" : "10"
            case "Nov" : "11"
            case "Dec" : "12"
            default: ""
        }
        return components[2] + "-" + month + "-" + (day.count == 1 ? "0\(day)" : day)
    }
}
