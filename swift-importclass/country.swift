import Foundation

struct Country {
    let name, population: String
    let states: Array<String>
    let best_city: City
    
    init(name: String, population: String, states: Array<String>, best_city: City) {
        self.name = name
        self.population = population
        self.states = states
        self.best_city = best_city
    }
}
