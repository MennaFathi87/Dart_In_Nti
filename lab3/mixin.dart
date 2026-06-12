//*الـ mixin هو طريقة لإعادة استخدام كود (Functions) في أكثر من كلاس بدون وراثة (extends).
//*with “أضيف كل وظائف Logger إلى Service”
mixin Logger {
  void log(String message) {
    print('LOG: $message');
  }
}

class Service with Logger {
  void execute() {
    log('Service executed');
  }
}

class AnotherService with Logger {
  void perform() {
    log('AnotherService performed');
  }
}

mixin Timestamp {
  void showTime() {
    print(DateTime.now());
  }
}
void mixinDemo() {
  Service service = Service();
  service.execute();

  AnotherService anotherService = AnotherService();
  anotherService.perform();

  // TODO: Create another class with Logger mixin and test logging
  // MINI CHALLENGE: Add multiple mixins to one class (Logger + another behavior) and demonstrate combined functionality
}

class AppService with Logger, Timestamp {
  void run() {
    log('App started');
    showTime();
  }
}
