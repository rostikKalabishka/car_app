import 'package:car_app/presentation/bloc/car_bloc.dart';
import 'package:car_app/presentation/page/car_details_page.dart';
import 'package:car_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (BuildContext context, CarState state) {
          if (state is CarsLoaded) {
            return ListView.separated(
              itemBuilder: (context, index) {
                final car = state.cars[index];
                return GestureDetector(
                  child: CarCard(car: car),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => CarDetailsPage(
                          car: car,
                        ),
                      ),
                    );
                  },
                );
              },
              itemCount: state.cars.length,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
            );
          } else if (state is CarsLoading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is CarsError) {
            return Center(
              child: Text('error: ${state.message}'),
            );
          }
          return Container();
        },
      ),
    );
  }
}
