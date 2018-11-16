//======================
// MARK: - Parameters
//======================

let price = 1499.0 // prix voyage
var numberOfDay = 0 // nombre de jour pendant lequel joey doit economiser
var money = 0.0 // argent du départ
var barn = ["milk": 0, "wheat": 0, "wool": 0] // lait, blé, laine
var total = 0
var reponse = ""
//======================
// MARK: - Activities
//======================
func calculateBarnSize() -> Int {
    var barnSize = 0
    for (name, size) in barn {
        barnSize += size
    }
    return barnSize
}

func feedCows() {
    money -= 4 // joey nourrit les vaches tout les jours
}

func sell()  {
    // on vend
    money += Double(barn["milk"]!) * 0.5
    money += Double(barn["wheat"]!) * 0.30
    money += Double(barn["wool"]!) * 1.0
    //on vide la grange
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

func harvest() {
    barn["wheat"]! += 100 // moisson
}

func mowSheep() {
    barn["wool"]! += 30 // tonte
}

func milkCows() {
    barn["milk"]! += 30  // traite de vache
}
//======================
// MARK: - Conversation
//======================
func firstChoice() {
    print("Que voulez vous faire ?"
        + "\n1. Enregistrer une nouvelle activité"
        + "\n2. Consulter ma banque"
        + "\n3. Consulter ma grange")
    if let choice = readLine() {
        switch choice {
        case "1": addNewActivity()
        case "2": print("Vous avez \(money) € sur votre compte")
        case "3": print("votre grange contient :"
            + "\n\(barn["milk"]!) bidons de lait"
            + "\n\(barn["wheat"]!) botte de blé"
            + "\n\(barn["wool"]!) pelottes de laine")
        default: print("je ne comprend pas")
        }
    }
}

func addNewActivity() {
    print("Enregistrer une nouvelle activité:"
        + "\n1. Jai nourris les animaux"
        + "\n2. J'ai vendu mes produit"
        + "\n3. J'ai trait mes vache"
        + "\n4. J'ai moissonné"
        + "\n5. J'ai tondu mes moutons")
    if let choice = readLine(){
        switch choice {
        case "1": feedCows()
        case "2": sell()
        case "3": milkCows()
        case "4": harvest()
        case "5": mowSheep()
        default: print("je ne comprend pas")
        }
        print("super")
    }
    
}



while true {
    firstChoice()
    }



