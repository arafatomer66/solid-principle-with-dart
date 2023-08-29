// “Functions that use pointers, or references to base classes, must be able to use objects of derived classes without knowing it”


abstract class Vehicle {
  void move();
}

abstract class FuelVehicle extends Vehicle {
  void refuel();
}

abstract class ElectricVehicle extends Vehicle {
  void recharge();
}

class ElectricCar extends ElectricVehicle {
  @override
  void recharge() {
     print('Recharging the car.....');
  }
  @override
  void move(){
     print('Electric car is moving...');
  }
}
class PetrolCar extends FuelVehicle{
  @override
  void refuel() {
    print('Refueling the car....');
  }
  @override
  void move() {
     print('Moving the petrol car...');
  }
}

/// These are global fuctions
void serviceFuelVehicle(FuelVehicle fuelVehicle){
   fuelVehicle.refuel();
   // some more servicing activities
}

void serviceElectricVehicle(ElectricVehicle electricVehicle){
   electricVehicle.recharge();
   // some more servicing activities
}