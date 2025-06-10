void main() {
  // Testdaten
  double orderValue = 55.90;
  double distance = 8.8;
  bool rushHour = true;
  bool isRaining = true;
  int orderSize = 6;

  // 1 Grundliefergebühr
  double baseFee;
  if (distance <= 5) {
    baseFee = 2.50;
  } else if (distance <= 10) {
    baseFee = 3.50;
  } else {
    baseFee = 5.00;
  }

  // 2 Distanzzuschlag ab dem 5. Kilometer (aufgerundet)
  int extraKm = (distance > 5) ? (distance - 5).ceil() : 0;
  double distanceSurcharge = extraKm * 0.30;

  // 3 Wetterzuschlag
  double rainSurcharge = isRaining ? 1.50 : 0.0;

  // 4 Hauptverkehrszeitzuschlag
  double rushHourSurcharge = rushHour ? 2.00 : 0.0;

  // 5 Mengenrabatt (nur der größte Rabatt zählt)
  double discount;
  if (orderSize >= 8) {
    discount = 2.00;
  } else if (orderSize >= 5) {
    discount = 1.00;
  } else if (orderSize >= 3) {
    discount = 0.50;
  } else {
    discount = 0.0;
  }

  // 6 Mindermengenzuschlag, wenn Bestellwert < 15€
  double minOrderSurcharge = (orderValue < 15) ? 5.00 : 0.0;

  // Gesamtkosten berechnen
  double totalCost =
      baseFee +
      distanceSurcharge +
      rainSurcharge +
      rushHourSurcharge -
      discount +
      minOrderSurcharge;

  // Maximalkosten-Regel: max 40% vom Bestellwert
  double maxCost = orderValue * 0.40;
  if (totalCost > maxCost) {
    totalCost = maxCost;
  }

  // Aufrunden auf volle 10 Cent
  totalCost = (totalCost * 10).ceil() / 10;

  print("Lieferkosten: €${totalCost.toStringAsFixed(2)}");

  // Bewertung mit ternärem Operator
  String deliveryType = (totalCost < 5)
      ? "Günstige Lieferung"
      : (totalCost <= 10)
      ? "Standardlieferung"
      : "Premium-Lieferung";

  print(deliveryType);
}
