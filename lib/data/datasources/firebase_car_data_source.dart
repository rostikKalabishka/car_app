import 'dart:developer';

import 'package:car_app/data/models/car_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<Car>> getCars() async {
    try {
      var snapshot = await firestore.collection('cars').get();
      final List<Car> carList =
          snapshot.docs.map((doc) => Car.fromJson(doc.data())).toList();
      return carList;
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
