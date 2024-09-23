import 'package:car_app/data/datasources/firebase_car_data_source.dart';
import 'package:car_app/data/models/car_model.dart';
import 'package:car_app/domain/repositories/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl({required this.dataSource});
  @override
  Future<List<Car>> fetchCars() async {
    return dataSource.getCars();
  }
}
