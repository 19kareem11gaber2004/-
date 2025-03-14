// user profile
class UserProfile {
  String name;
  String email;
  int age;

  UserProfile(this.name, this.email, this.age);

  void displayInfo() {
    print("Name: $name, Email: $email, Age: $age");
  }
}

// Bank Account 
class BankAccount {
  double _balance = 0.0;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
    }
  }

  double getBalance() => _balance;
}

// Shape Class
abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() => 3.14 * radius * radius;
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double area() => width * height;
}

void main() {
  // Testing UserProfile
  UserProfile user = UserProfile("John Doe", "john@example.com", 25);
  user.displayInfo();

  // Testing BankAccount
  BankAccount account = BankAccount();
  account.deposit(1000);
  account.withdraw(500);
  print("Current Balance: \${account.getBalance()}");

  // Testing Shapes
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(4, 6);
  print("Circle Area: \${circle.area()}");
  print("Rectangle Area: \${rectangle.area()}");
  
  
}