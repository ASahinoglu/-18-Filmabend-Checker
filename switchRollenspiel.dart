void main() {
  // Eingabewerte: Hier Testwerte
  String characterClass =
      'mage'; // Charakterklasse: 'warrior', 'mage', 'archer'
  String timeOfDay =
      'night'; // Tageszeit: 'morning', 'noon', 'evening', 'night'
  String weather = 'stormy'; // Wetter: 'sunny', 'rainy', 'stormy'
  int baseAttack = 50; // Basisangriffswert, festgelegt

  // Startwert für die Angriffsstärke
  int attack = baseAttack;

  // Erster switch: Unterscheidung nach Charakterklasse
  switch (characterClass) {
    case 'warrior':
      // Für Warrior ist die Tageszeit wichtig
      switch (timeOfDay) {
        case 'morning':
        case 'noon':
        case 'evening':
          attack += 10; // Tagsüber +10
          break;
        case 'night':
          attack -= 10; // Nachts -10
          break;
      }
      break;

    case 'mage':
      // Für Mage ist das Wetter wichtig
      switch (weather) {
        case 'stormy':
          attack += 20; // Bei Sturm +20
          break;
        case 'sunny':
          attack -= 15; // Bei Sonne -15
          break;
      }
      break;

    case 'archer':
      // Für Archer ist ebenfalls das Wetter wichtig
      switch (weather) {
        case 'sunny':
          attack += 15; // Bei Sonne +15
          break;
        case 'rainy':
          attack -= 20; // Bei Regen -20
          break;
      }
      break;
  }

  // Begrenzung des Wertes auf 1 bis 100
  if (attack > 100) attack = 100;
  if (attack < 1) attack = 1;

  // Ausgabe 1: Zusammenfassung der Werte
  print(
    "Dein ${characterClass} hat bei ${weather} und ${timeOfDay} eine Angriffsstärke von ${attack}!",
  );

  // Ausgabe 2: Bewertung der Angriffsstärke
  if (attack >= 80) {
    print("Sehr gefährlich!");
  } else if (attack >= 50) {
    print("Kämpfer in guter Form!");
  } else {
    print("Nicht optimal!");
  }
}
