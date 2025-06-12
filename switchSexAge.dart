void main() {
  String sex = 'male'; // oder 'female'
  int age = 28; // Alter zwischen 20 und 35

  switch (sex) {
    case 'male':
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 181,4m");
          break;
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 181,3m");
          break;
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 180,4m");
          break;
        default:
          print("Alter nicht im Bereich");
      }
      break;

    case 'female':
      switch (age) {
        case 20:
        case 21:
        case 22:
        case 23:
        case 24:
        case 25:
          print("Im Schnitt 167,5m");
          break;
        case 26:
        case 27:
        case 28:
        case 29:
        case 30:
          print("Im Schnitt 167,3m");
          break;
        case 31:
        case 32:
        case 33:
        case 34:
        case 35:
          print("Im Schnitt 167,2m");
          break;
        default:
          print("Alter nicht im Bereich");
      }
      break;

    default:
      print("Geschlecht nicht erkannt");
  }
}
