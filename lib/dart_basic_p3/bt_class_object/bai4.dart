import 'dart:developer';

class Device {
  final String id;
  final String name;
  final String systemName;
  final Manufacturer manufacturer;

  Device(this.id, this.name, this.systemName, this.manufacturer);
}

class Manufacturer {
  final String id;
  final String name;
  final List<Device> listDevice = [];

  Manufacturer(this.id, this.name);
  bool push(Device device) {
    if (id == device.manufacturer.id) {
      listDevice.add(device);
      return true;
    }
    log('ID not match');
    return false;
  }
}

void main() {
  Manufacturer apple = Manufacturer('01', 'Apple');
  Manufacturer samsung = Manufacturer('02', 'SamSung');

  Device iphone16 = Device('101', 'Iphone 14', 'iOS 18', apple);
  Device macbookPro = Device('102', 'Macbook pro', 'macOS Sonoma ', apple);

  Device galaxyS23 = Device('201', "Galaxy S23", "Android 13", samsung);
  Device galaxyTabS8 = Device('202', "Galaxy Tab S8", "Android 12", samsung);

  apple.push(iphone16);
  apple.push(macbookPro);
  apple.push(galaxyS23);
  apple.push(galaxyTabS8);

  apple.listDevice.forEach((element) {
    log('Device: ${element.name} , Manufacturer: ${element.manufacturer.name}');
  });
}
