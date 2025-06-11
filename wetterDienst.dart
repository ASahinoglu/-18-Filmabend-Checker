void main() {
  // Wetterdaten für 3 Tage
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  // Temperatur-Daten sammeln
  double tempSum = 0;
  int tempCount = 0;

  if (weatherData[0]['temp'] != null) {
    tempSum += weatherData[0]['temp']!;
    tempCount++;
  }
  if (weatherData[1]['temp'] != null) {
    tempSum += weatherData[1]['temp']!;
    tempCount++;
  }
  if (weatherData[2]['temp'] != null) {
    tempSum += weatherData[2]['temp']!;
    tempCount++;
  }

  // Regen-Daten sammeln
  double rainSum = 0;
  int rainCount = 0;

  if (weatherData[0]['rain'] != null) {
    rainSum += weatherData[0]['rain']!;
    rainCount++;
  }
  if (weatherData[1]['rain'] != null) {
    rainSum += weatherData[1]['rain']!;
    rainCount++;
  }
  if (weatherData[2]['rain'] != null) {
    rainSum += weatherData[2]['rain']!;
    rainCount++;
  }

  // Wind-Daten sammeln
  double windSum = 0;
  int windCount = 0;

  if (weatherData[0]['wind'] != null) {
    windSum += weatherData[0]['wind']!;
    windCount++;
  }
  if (weatherData[1]['wind'] != null) {
    windSum += weatherData[1]['wind']!;
    windCount++;
  }
  if (weatherData[2]['wind'] != null) {
    windSum += weatherData[2]['wind']!;
    windCount++;
  }

  // Durchschnitt berechnen (prüfen ob Werte vorhanden sind)
  double avgTemp = tempCount > 0 ? tempSum / tempCount : 0;
  double avgRain = rainCount > 0 ? rainSum / rainCount : 0;
  double avgWind = windCount > 0 ? windSum / windCount : 0;

  // Ausgabe
  print('Durchschnittstemperatur: ${avgTemp.toStringAsFixed(2)} °C');
  print('Durchschnittlicher Niederschlag: ${avgRain.toStringAsFixed(2)} mm');
  print(
    'Durchschnittliche Windgeschwindigkeit: ${avgWind.toStringAsFixed(2)} km/h',
  );
}
