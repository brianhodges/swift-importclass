import Foundation

func main() {
    var countries = [Country]()
    let c1 : City = City(name: "Los Angeles", population: "4 million")
    let s1 : Array<String> = ["New York", "Virginia", "California", "Florida", "Hawaii"]
    countries.append(Country(name: "USA", population: "350 million", states: s1, best_city: c1))

    let c2 : City = City(name: "Cancun", population: "700,000")
    let s2 : Array<String> = ["Durango", "Puebla", "Guerrero", "Quintana Roo"]
    countries.append(Country(name: "Mexico", population: "127 million", states: s2, best_city: c2))


    let file = "swift-importclass/log.txt"

    if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
        let path = dir.appendingPathComponent(file)
        do {
            var data = "\n"
            for country in countries {
                data = data + "Name: " + country.name + "\n"
                data = data + "Population: " + country.population + "\n"
                data = data + "Best States: " + country.states.joined(separator: ", ") + "\n"
                data = data + "Top State Count: " + String(country.states.count) + "\n"
                data = data + "Best City: " + country.best_city.name + "\n"
                data = data + country.best_city.name + " Population: " + country.best_city.population + "\n\n"
            }
            try (data).write(to: path, atomically: false, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("Something went wrong: \(error)")
        }
    }
}

main()
