//=====================Function=========================
// =====================================================

void main() {
  print("=== Dart Functions Live Demo ===");
  printSeparator();

  // -------------------------------------------------
  // 1️⃣ BASIC FUNCTION (Behavior without input/output)
  // -------------------------------------------------
  greetUser();

  // TODO (Task 1):
  // Create a new function called sayGoodbye()
  // It should print a goodbye message
  // Call it here from main()

  printSeparator();

  // -------------------------------------------------
  // 2️⃣ FUNCTION WITH INPUTS & OUTPUTS
  // -------------------------------------------------
  int sum = addNumbers(4, 6);
  print("Sum result: $sum");

  // TODO (Task 2):
  // Create a function multiplyNumbers(int a, int b)
  // Return the multiplication result
  // Call it here and print the result

  printSeparator();

  // -------------------------------------------------
  // 3️⃣ INPUT / OUTPUT VARIATIONS
  // -------------------------------------------------
  printMessage("Learning Dart Functions");

  int fixed = getFixedNumber();
  print("Fixed number: $fixed");

  doNothing();

  // TODO (Task 3):
  // Create:
  // - One function that takes input but returns nothing
  // - One function that returns output but takes no input

  printSeparator();

  // -------------------------------------------------
  // 4️⃣ ARROW FUNCTIONS (Simple Logic)
  // -------------------------------------------------
  print("Square of 5: ${square(5)}");

  // TODO (Task 4):
  // Create an arrow function that converts
  // kilometers to meters
  // Call it here

  printSeparator();

  // -------------------------------------------------
  // 5️⃣ COMPLEX LOGIC (NO ARROW FUNCTION)
  // -------------------------------------------------
  int gradeLevel = calculateGrade(78);
  print("Grade Level: $gradeLevel");

  // TODO (Task 5):
  // Add a new condition:
  // If score >= 50 return 2
  // Else return 1

  printSeparator();

  // -------------------------------------------------
  // 6️⃣ OPTIONAL PARAMETERS
  // -------------------------------------------------
  printStudent("Ali");
  printStudent("Sara", 20);

  // TODO (Task 6):
  // Add an optional parameter (String grade)
  // Print it only if it is not null

  printSeparator();

  // -------------------------------------------------
  // 7️⃣ OPTIONAL NAMED PARAMETERS WITH DEFAULT VALUES
  // -------------------------------------------------
  orderCoffee("Large");
  orderCoffee("Medium", sugar: "No Sugar");

  // TODO (Task 7):
  // Add a named parameter (bool milk)
  // Default value = false
  // Print whether milk is added or not

  printSeparator();

  // -------------------------------------------------
  // 8️⃣ NAMED PARAMETERS (READABILITY)
  // -------------------------------------------------
  createUser(name: "Ahmed", age: 25);

  // TODO (Task 8):
  // Add an optional named parameter (email)
  // Print it only if provided

  printSeparator();

  // -------------------------------------------------
  // 9️⃣ REQUIRED vs OPTIONAL NAMED PARAMETERS
  // -------------------------------------------------
  registerStudent(name: "Omar", id: 101, level: 3);

  // TODO (Task 9):
  // Add a required parameter (department)
  // Try running the program without it and observe the error

  printSeparator();

  print("=== End of Live Demo ===");
}

// =====================================================
// BASIC FUNCTIONS
// =====================================================

void greetUser() {
  print("Welcome to Dart Programming!");
}

void printSeparator() {
  print("----------------------------------");
}

// =====================================================
// INPUTS & OUTPUTS
// =====================================================

int addNumbers(int a, int b) {
  return a + b;
}

void printMessage(String message) {
  print(message);
}

int getFixedNumber() {
  return 10;
}

void doNothing() {
  // intentionally empty
}

// =====================================================
// ARROW FUNCTIONS
// =====================================================

int square(int x) => x * x;

// =====================================================
// COMPLEX LOGIC FUNCTION
// =====================================================

int calculateGrade(int score) {
  if (score >= 90) {
    return 5;
  } else if (score >= 75) {
    return 4;
  } else if (score >= 60) {
    return 3;
  } else {
    return 2;
  }
}

// =====================================================
// OPTIONAL PARAMETERS
// =====================================================

void printStudent(String name, [int? age]) {
  print("Name: $name");
  if (age != null) {
    print("Age: $age");
  }
}

// =====================================================
// OPTIONAL NAMED PARAMETERS WITH DEFAULT VALUES
// =====================================================

void orderCoffee(String size, {String sugar = "Normal"}) {
  print("Order:");
  print("Size: $size");
  print("Sugar: $sugar");
}

// =====================================================
// NAMED PARAMETERS
// =====================================================

void createUser({required String name, required int age}) {
  print("User:");
  print("Name: $name");
  print("Age: $age");
}

// =====================================================
// REQUIRED vs OPTIONAL NAMED PARAMETERS
// =====================================================

void registerStudent({
  required String name,
  required int id,
  required int level,
}) {
  print("Student:");
  print("Name: $name");
  print("ID: $id");
  print("Level: $level");
}
