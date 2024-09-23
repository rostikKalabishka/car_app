import 'package:car_app/firebase_options.dart';
import 'package:car_app/injection_container.dart';
import 'package:car_app/presentation/bloc/car_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'presentation/page/onboarding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initInjection();

  runApp(const MyApp());
}

// Future<void> addCarsToFirestore(List<Car> cars) async {
//   try {

//     CollectionReference carsCollection =
//         FirebaseFirestore.instance.collection('cars');

//     //
//     WriteBatch batch = FirebaseFirestore.instance.batch();

//     for (Car car in cars) {
//       DocumentReference docRef = carsCollection.doc();
//       batch.set(docRef, car.toJson());
//     }

//     await batch.commit();

//     print("Cars added to Firestore successfully!");
//   } catch (e) {
//     print("Failed to add cars: $e");
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CarBloc>()..add(LoadCars()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const OnboardingPage(),
      ),
    );
  }
}
