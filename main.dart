void main() {
  // variablen
  int age = 13;
  bool hasParentalConsent = false;
  int movieAgeRating = 16;

  // Bedingung: alt genug ODER (Eltern erlauben UND nicht mehr als 2 Jahre zu jung)
  if (age >= movieAgeRating ||
      (hasParentalConsent && (movieAgeRating - age <= 2))) {
    print("Du darfst den Film sehen.");
  } else {
    print("Zutritt zum Film leider nicht erlaubt.");
  }
}
