// “Many client-specific interfaces are better than one general-purpose interface”

// Bad way

// abstract class SmartDevice {
//   void makeCall();
//   void sendEmail();
//   void browseInternet();
//   void takePicture();
// }

// class SmartPhone implements SmartDevice {
//   @override
//   void makeCall() {
//     print('Making a  call...');
//   }

//   @override
//   void sendEmail() {
//     print('Sending email...');
//   }

//   @override
//   void browseInternet() {
//     print('Browsing the internet');
//   }

//   @override
//   void takePicture() {
//     print('Taking a picture');
//   }
// }

// class SmartWatch implements SmartDevice {
//   @override
//   void makeCall() {
//     print('Making a call...');
//   }

//   @override
//   void sendEmail() {
//     throw UnimplementedError('This device cannot send emails');
//   }

//   @override
//   void browseInternet() {
//     throw UnimplementedError('This device cannot browse the internet');
//   }

//   @override
//   void takePicture() {
//     throw UnimplementedError('This device cannot take picture');
//   }
// }

// Good way

abstract class Phone {
  void makeCall();
}

abstract class EmailDevice {
  void sendEmail();
}

abstract class WebBrowser {
  void browseInternet();
}

abstract class Camera {
  void takePicture();
}

class SmartWatch implements Phone {
  @override
  void makeCall() {
    print('Making a call...');
  }
}

class SmartPhone implements Phone, EmailDevice, WebBrowser, Camera {
  @override
  void makeCall() {
    print('Making a  call...');
  }

  @override
  void sendEmail() {
    print('Sending email...');
  }

  @override
  void browseInternet() {
    print('Browsing the internet');
  }

  @override
  void takePicture() {
    print('Taking a picture');
  }
}
