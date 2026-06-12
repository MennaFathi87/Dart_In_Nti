//SDLC is a process that is used to develop software applications. It stands for Software Development Life Cycle. It is a systematic approach to software development that includes a series of phases that are followed in a specific order. The phases of SDLC include:
// 1. Planning
// 2. Analysis
// 3. Design
// 4. Implementation (core development phase) coding.
// 5. Testing  ==> unit testing, integration testing, system testing, acceptance testing
// 6. Deployment ==> the software is released to the users and made available for use. This phase may involve activities such as installation, configuration, and training for users.
// 7. Maintenance
//data structure
//queue means a linear data structure that follows the First In First Out (FIFO) principle. It is a collection of elements where the addition of new elements happens at one end (called the rear) and the removal of elements happens at the other end (called the front). The main operations of a queue are enqueue (adding an element to the rear) and dequeue (removing an element from the front). Queues are commonly used in various applications such as scheduling tasks, managing resources, and handling requests in computer systems.
//linked list is a linear data structure that consists of a sequence of nodes, where each node contains data and a reference (or link) to the next node in the sequence. The first node is called the head, and the last node is called the tail. Linked lists can be singly linked (where each node has a reference to the next node) or doubly linked (where each node has references to both the next and previous nodes). Linked lists are dynamic in size, allowing for efficient insertion and deletion of elements, but they do not provide direct access to elements like arrays do.
//stack is a linear data structure that follows the Last In First Out (LIFO) principle. It is a collection of elements where the addition of new elements happens at one end (called the top) and the removal of elements also happens at the same end. The main operations of a stack are push (adding an element to the top) and pop (removing an element from the top). Stacks are commonly used in various applications such as function calls, expression evaluation, and backtracking algorithms in computer science.
//list : A list is a collection of elements that can be ordered and indexed. It is a data structure that allows for the storage and manipulation of a sequence of values. Lists can be implemented in various ways, such as arrays or linked lists, and they provide operations for adding, removing, and accessing elements. Lists are commonly used in programming languages to store and manage collections of data, such as arrays in Python or ArrayLists in Java.
//map : A map is a data structure that stores key-value pairs, where each key is unique and maps to a specific value. It is also known as a dictionary, associative array, or hash table in different programming languages. Maps provide efficient lookup, insertion, and deletion of key-value pairs. They are commonly used for tasks such as storing and retrieving data based on unique identifiers, implementing caches, and managing relationships between data elements. In many programming languages, maps are implemented using hash functions to achieve fast access to values based on their corresponding keys.
//set : A set is a collection of unique elements that does not allow duplicate values. It is a data structure that represents a mathematical set, where the order of elements does not matter. Sets provide operations for adding, removing, and checking for the presence of elements. They are commonly used in programming languages to store and manage collections of distinct values, such as sets in Python or HashSet in Java. Sets are often used for tasks such as eliminating duplicates from a list, performing mathematical operations like union and intersection, and managing relationships between data elements.
//============================================================================================================

void main() {
  /*
//list
  List<String> students = ['ahmed', 'ali', 'hassan', 'mohamed'];
  print(students);
  print(students[0]);
  print(students.length);
  students.add('sara');
  print(students);
  students.remove('ali');
  print(students);
  students[0] = 'omar';
  print(students);
  students.first = 'yousef';
  print(students);
  */
  //==============================================================================================
  /*
  //set
  Set<String> courses = {'math', 'physics', 'chemistry'};
  courses.add('biology');
  print(courses);
  courses.add('math');
  print(
    courses,
  ); // sets do not allow duplicate values, so 'math' will not be added again
  */
  //==============================================================================================
  /*
  //map
  Map<String, dynamic> student = {'name': 'ahmed', 'age': 20, 'grade': 'A'};
  print(student);
  student.forEach((key, value) {
    print('$key: $value');
  });
  for (var key in student.values) {
    print(key);
  }
*/
  //==============================================================================================
  /*
  //list of maps
  List<Map<String, dynamic>> students = [
    {'name': 'ahmed', 'grade': 98},
    {'name': 'sama', 'grade': 100},
  ]; //
  print(students);
  */
  //=============================================================================================
//oop
}
