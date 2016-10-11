import Foundation

extension Int {

    var minute: DateComponents {
        get {
            return DateComponents(minute: self)
    }
        }

    var minutes: DateComponents {
        get {
            return minute
        }
    }

    var hour: DateComponents {
        get {
            return DateComponents(hour: self)
        }
    }

    var hours: DateComponents {
        get {
            return hour
        }
    }
}

extension Date {
    var calenar: Calendar {
        get {
            return Calendar.current
        }
    }
    
    private var components: DateComponents {
        get {
            return calenar.dateComponents([.year,.month,.day,.hour,.month], from: self)
        }
    }
    
    func beginingOfTheDay () -> Date? {
        var newComponents = components
        newComponents.setValue(0, for: .hour)
        newComponents.setValue(0, for: .minute)
        return calenar.date(from: newComponents)
    }
    
    func endOfTheDay () -> Date? {
        var newComponents = components
        newComponents.setValue(23, for: .hour)
        newComponents.setValue(59, for: .minute)
        return calenar.date(from: newComponents)
    }
    
    func adding(dateComponents: DateComponents) -> Date? {
        return calenar.date(byAdding: dateComponents, to: self)
    }
}
