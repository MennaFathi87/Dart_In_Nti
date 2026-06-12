abstract class Notification {
  void send();
}

class Email extends Notification {
  @override
  void send() {
    print("Sending Email");
  }
}

class SMS extends Notification {
  @override
  void send() {
    print("Sending SMS");
  }
}

class PushNotification extends Notification {
  @override
  void send() {
    print("Sending Push Notification");
  }
}

void main() {
  List<Notification> notifications = [Email(), SMS(), PushNotification()];
  for (var notification in notifications) {
    notification.send();
  }
}
