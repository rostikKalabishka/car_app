class Car {
  final String model;
  final double distance;
  final double fuelCapacity;
  final double pricePerHour;
  const Car({
    required this.model,
    required this.distance,
    required this.fuelCapacity,
    required this.pricePerHour,
  });

  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
        model: json['model'],
        distance: json['distance'],
        fuelCapacity: json['fuelCapacity'],
        pricePerHour: json['pricePerHour']);
  }

  Map<String, dynamic> toJson() {
    return {
      "model": model,
      "distance": distance,
      "fuelCapacity": fuelCapacity,
      "pricePerHour": pricePerHour
    };
  }
}
