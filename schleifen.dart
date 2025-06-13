void main() {
  List<int> points = [4, 5, 4, 2, 6, 6, 3];
  List<String> names = [
    'Julietta',
    'Benjamino',
    'Hans-Günther',
    'Evalinea',
    'Fiona',
    'Gregory',
    'Leonhart',
  ];
  //AUFGABE 1
  for (String name in names) {
    print(name);
  }
  //AUFGABE 2
  int sum = 0; //Punkte sammeln
  for (int point in points) {
    sum += point; //Jedes Element addieren
  }

  double average = sum / points.length; //Durchschnitt berechnen

  print("Der Durcschnitt der Punkte ist : ${average.toStringAsFixed(2)}");

  for (int i = 0; i < names.length; i++) {
    print("${names[i]} hat ${points[i]} Punkte");
  }
}
