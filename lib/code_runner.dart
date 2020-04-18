import 'package:built_value_tut/model/built_vehicle.dart';

class CodeRunner {
  static void runCode() {
    var car = BuiltVehicle(
      (b) => b
        ..type = VehicleType.car
        ..brand = 'Tesla'
        ..price = 100000
        ..passangerNames.addAll(['Name1', 'Name2', 'Name3']),
    );

    var copiedTrain = car.rebuild(
      (b) => b
        ..brand = 'BMW'
        ..type = VehicleType.train,
    );
    print(copiedTrain);
    print(car);

    final carJson = car.toJson();
    print(carJson);
    final carFromJson =
        BuiltVehicle.fromJson(carJson).rebuild((b) => b..price = 2000);
    print(carFromJson);
  }
}
