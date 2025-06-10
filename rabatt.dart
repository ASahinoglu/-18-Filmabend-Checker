void main() {
  // Test 1
  calculateDiscount(150, true, false, false);

  // Test 2
  calculateDiscount(250, false, true, true);
}

void calculateDiscount(
  double totalAmount,
  bool isStudent,
  bool hasVoucher,
  bool isLoyalCustomer,
) {
  // Rabatt ermitteln
  double discount = 0;

  double studentDiscount = isStudent ? 5.0 : 0.0;
  double loyalDiscount = isLoyalCustomer ? 10.0 : 0.0;
  double voucherDiscount = hasVoucher ? 15.0 : 0.0;

  // Höchsten Rabatt auswählen
  discount = [
    studentDiscount,
    loyalDiscount,
    voucherDiscount,
  ].reduce((a, b) => a > b ? a : b);

  // Extra-Rabatt ab 200€
  if (totalAmount > 200) {
    discount += 5.0;
  }

  // Rabatt nicht über 100% (sicherheitscheck)
  if (discount > 100) {
    discount = 100;
  }

  print("Anzuwendender Rabatt: $discount%");

  // Ausgabe mit ternärem Operator
  String message = (discount > 15)
      ? "Super Spar-Deal!"
      : (discount > 0)
      ? "Normaler Rabatt"
      : "Standardpreis";

  print(message);
  print("----------");
}
