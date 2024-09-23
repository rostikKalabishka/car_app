import 'package:car_app/data/models/car_model.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
