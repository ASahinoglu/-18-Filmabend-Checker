void main() {
  List<Map<String, double?>> weatherData = [
    {'temp': 5.3, 'rain': 0.9, 'wind': null},
    {'temp': 4.5, 'rain': null, 'wind': 16.8},
    {'temp': null, 'rain': 3.8, 'wind': null},
  ];

  double? temp3 = weatherData[2]['temp'];
  double? wind1 = weatherData[0]['wind'];
  double? temp2 = weatherData[1]['temp'];
  double? wind2 = weatherData[1]['wind'];

  double temp2Safe = temp2 ?? 0.0;
  double tempOrWind = (4.5 >= temp2Safe) ? (temp2 ?? 0.0) : (wind2 ?? 0.0);
  double x = temp3 ?? wind1 ?? tempOrWind;

  print('Der Wert von x ist: $x');
}
