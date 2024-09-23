import 'package:bloc/bloc.dart';
import 'package:car_app/data/models/car_model.dart';
import 'package:car_app/domain/usecases/get_cars.dart';
import 'package:meta/meta.dart';

part 'car_event.dart';
part 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;
  CarBloc({required this.getCars}) : super(CarsLoading()) {
    on<CarEvent>((event, emit) async {
      if (event is LoadCars) {
        await _loadCars(event, emit);
      }
    });
  }
  Future<void> _loadCars(LoadCars event, emit) async {
    emit(CarsLoading());
    try {
      final cars = await getCars.call();
      emit(CarsLoaded(cars));
    } catch (e) {
      emit(CarsError(e.toString()));
    }
  }
}
