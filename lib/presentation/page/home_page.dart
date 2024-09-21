import 'package:car_app/data/models/car_model.dart';
import 'package:car_app/presentation/page/car_details_page.dart';
import 'package:car_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Car> carList = [
    const Car(
      model: 'Fortuner Gr',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    const Car(
      model: 'Fortuner Gr',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    const Car(
      model: 'Fortuner Gr',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    ),
    const Car(
      model: 'Fortuner Gr',
      distance: 870,
      fuelCapacity: 50,
      pricePerHour: 45,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Car'),
      ),
      body: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            final car = carList[index];
            return GestureDetector(
              child: CarCard(car: car),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CarDetailsPage(
                          car: car,
                        )));
              },
            );
          },
          itemCount: carList.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 10,
            );
          },
        ),
      ),
    );
  }
}
