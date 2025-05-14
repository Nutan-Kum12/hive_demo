import 'package:get/get.dart';
import 'package:hive/hive.dart';

class HomeControllers  extends GetxController{
  @override
  void onInit()async {
    super.onInit();
    // var box=await Hive.openBox<int>('myBox'); in this we can specify the type of data we want to store in the box (int)
    var box=await Hive.openBox('myBox');
    var b=Hive.box('myBox');
    print('b.name: ${b.name}');
    print('b.path: ${b.path}');
    print('b.isOpen: ${b.isOpen}');
    print('b.length: ${b.length}');

    // Writing data to the box
    b.put('name', 'John Doe');
    b.put('age', 25);
    b.put('isMarried', false);
    b.put('height', 1.75);
    b.put('weight', 70.5);
    b.put('hobbies', ['reading', 'writing', 'coding']);
    b.put('address', {'city': 'New York', 'state': 'NY'});
   
    print(b.keys);
    print(b.values);
    print('b.length: ${b.length}');

    // Retrieving data from the box
    print(b.get('name'));
    print(b.get('age'));

    print(b.get('isActive'));    //here isActive is not present in the box so it will return null
    print(b.get('xyz', defaultValue: 'default value')); // if key not found then it will return default value
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {
    super.onClose();
  }
}