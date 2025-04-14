// 1. Класс "Человек" Создайте класс Person с полями name, age, gender. 
 //Реализуйте методы для вывода информации о человеке и увеличения его возраста. Добавьте метод для изменения имени.


 // class Person {
 //   String name;
 //   int age;
 //   String gender;

 //   Person(this.name, this.age, this.gender);

 //   void displayInfo() {
 //     print('Имя: $name, Возраст: $age, Пол: $gender');
 //   }

 //   void increaseAge() {
 //     age++;
 //   }

 //   void changeName(String newName) {
 //     name = newName;
 //   }
 // }












// 2. Наследование: Класс "Работник" и "Менеджер"
 // Создайте класс Worker, который наследуется от класса Person, и добавьте поле salary. Создайте класс Manager, который наследует от Worker и добавляет поле для подчиненных сотрудников.

 //   class Worker extends Person {
 //   double salary;

 //   Worker(String name, int age, String gender, this.salary) : super(name, age, gender);

 //   void displaySalary() {
 //     print('Зарплата: $salary');
 //   }
 //  }

 //  class Manager extends Worker {
 //   List<String> subordinates;

 //   Manager(String name, int age, String gender, double salary, this.subordinates)
 //       : super(name, age, gender, salary);

 //   void displaySubordinates() {
 //     print('Подчиненные: ${subordinates.join(', ')}');
 //   }
 //  }




// 3. Полиморфизм: Животные
 // Создайте интерфейс Animal с методом makeSound(). Реализуйте классы Dog, Cat, и Cow, которые реализуют этот интерфейс. Продемонстрируйте полиморфизм на примере массива животных.
 // abstract class Animal {
 //   void makeSound();
 // }
 
 // class Dog implements Animal {
 //   @override
 //   void makeSound() {
 //     print('Гав!');
 //   }
 // }
 
 // class Cat implements Animal {
 //   @override
 //   void makeSound() {
 //     print('Мяу!');
 //   }
 // }
 
 // class Cow implements Animal {
 //   @override
 //   void makeSound() {
 //     print('Му!');
 //   }
 // }
 
 
 
// 4. Абстрактный класс "Транспорт"
 // Создайте абстрактный класс Transport с абстрактным методом move(). Реализуйте классы Car и Bike, которые наследуются от Transport и реализуют метод move().
 // abstract class Transport {
 //   void move();
 // }
 
 // class Car extends Transport {
 //   @override
 //   void move() {
 //     print('Машина едет');
 //   }
 // }
 
 // class Bike extends Transport {
 //   @override
 //   void move() {
 //     print('Велосипед едет');
 //   }
 // }
 
// 5. Класс "Книга" и "Библиотека"
 // Создайте класс Book с полями title, author, и year. Создайте класс Library, который содержит коллекцию книг и методы для добавления книг, поиска по автору и году публикации.
 // class Book {
 //   String title;
 //   String author;
 //   int year;
 
 //   Book(this.title, this.author, this.year);
 // }
 
 // class Library {
 //   List<Book> books = [];
 
 //   void addBook(Book book) {
 //     books.add(book);
 //   }
 
 //   List<Book> findBooksByAuthor(String author) {
 //     return books.where((book) => book.author == author).toList();
 //   }
 
 //   List<Book> findBooksByYear(int year) {
 //     return books.where((book) => book.year == year).toList();
 //   }
 // }
 
 
// 6. Инкапсуляция: Банк
 // Создайте класс BankAccount с полями accountNumber, balance, и методами для пополнения и снятия средств. Обеспечьте инкапсуляцию для безопасности данных счета.
 // class BankAccount {
 //   String accountNumber;
 //   double _balance;
 
 //   BankAccount(this.accountNumber, this._balance);
 
 //   double get balance => _balance;
 
 //   void deposit(double amount) {
 //     if (amount > 0) {
 //       _balance += amount;
 //     }
 //   }
 
 //   void withdraw(double amount) {
 //     if (amount > 0 && _balance >= amount) {
 //       _balance -= amount;
 //     }
 //   }
 // }
 
 
// 7. Счетчик объектов
 // Создайте класс Counter, который хранит количество созданных объектов данного класса. Реализуйте статическое поле для учета количества объектов и метод для его увеличения при каждом создании объекта.
 // class Counter {
 //   static int count = 0;
 
 //   Counter() {
 //     count++;
 //   }
 
 //   static void showCount() {
 //     print('Количество объектов: $count');
 //   }
 // }
 
// 8. Площадь фигур
 // Создайте абстрактный класс Shape с абстрактным методом getArea(). Реализуйте классы Circle и Rectangle, которые наследуют от Shape и вычисляют площадь круга и прямоугольника соответственно.
 // abstract class Shape {
 //   double getArea();
 // }
 
 // class Circle extends Shape {
 //   double radius;
 
 //   Circle(this.radius);
 
 //   @override
 //   double getArea() {
 //     return 3.14 * radius * radius;
 //   }
 // }
 
 // class Rectangle extends Shape {
 //   double width;
 //   double height;
 
 //   Rectangle(this.width, this.height);
 
 //   @override
 //   double getArea() {
 //     return width * height;
 //   }
 // }
 
// 9. Наследование: Животные и их движения
 // Создайте класс Animal с методом move(). Реализуйте классы Fish, Bird и Dog, которые наследуют Animal и переопределяют метод move() (рыба плавает, птица летает, собака бегает).
 // class Animal {
 //   void move() {
 //     print('Животное двигается');
 //   }
 // }
 
 // class Fish extends Animal {
 //   @override
 //   void move() {
 //     print('Рыба плавает');
 //   }
 // }
 
 // class Bird extends Animal {
 //   @override
 //   void move() {
 //     print('Птица летает');
 //   }
 // }
 
 // class Dog extends Animal {
 //   @override
 //   void move() {
 //     print('Собака бегает');
 //   }
 // }
 
// 10. Работа с коллекциями: Университет
 // Создайте класс Student с полями name, group, grade. Создайте класс University, который содержит список студентов и методы для добавления студентов, сортировки по имени и фильтрации по успеваемости.
 // class Student {
 //   String name;
 //   String group;
 //   double grade;
 
 //   Student(this.name, this.group, this.grade);
 // }
 
 // class University {
 //   List<Student> students = [];
 
 //   void addStudent(Student student) {
 //     students.add(student);
 //   }
 
 //   void sortStudentsByName() {
 //     students.sort((a, b) => a.name.compareTo(b.name));
 //   }
 
 //   List<Student> filterByGrade(double grade) {
 //     return students.where((student) => student.grade >= grade).toList();
 //   }
 // }
 
// 11. Класс "Магазин"
 // Реализуйте класс Product с полями name, price, и quantity. Создайте класс Store, который содержит список продуктов и методы для добавления, удаления и поиска товаров по имени.
 // class Product {
 //   String name;
 //   double price;
 //   int quantity;
 
 //   Product(this.name, this.price, this.quantity);
 // }
 
 // class Store {
 //   List<Product> products = [];
 
 //   void addProduct(Product product) {
 //     products.add(product);
 //   }
 
 //   void removeProduct(String productName) {
 //     products.removeWhere((product) => product.name == productName);
 //   }
 
 //   Product? findProductByName(String productName) {
 //     return products.firstWhere((product) => product.name == productName, orElse: () => null);
 //   }
 // }
 
// 12. Интерфейс "Платежная система"
 // Создайте интерфейс PaymentSystem с методами pay() и refund(). Реализуйте классы CreditCard и PayPal, которые реализуют этот интерфейс.
 // abstract class PaymentSystem {
 //   void pay(double amount);
 //   void refund(double amount);
 // }
 
 // class CreditCard implements PaymentSystem {
 //   @override
 //   void pay(double amount) {
 //     print('Оплачено с кредитной карты: $amount');
 //   }
 
 //   @override
 //   void refund(double amount) {
 //     print('Возврат на кредитную карту: $amount');
 //   }
 // }
 
 // class PayPal implements PaymentSystem {
 //   @override
 //   void pay(double amount) {
 //     print('Оплачено через PayPal: $amount');
 //   }
 
 //   @override
 //   void refund(double amount) {
 //     print('Возврат через PayPal: $amount');
 //   }
 // }
 
// 13. Генерация уникальных идентификаторов
 // Создайте класс UniqueID, который генерирует уникальные идентификаторы для объектов каждого созданного класса. Реализуйте этот функционал через статическое поле и метод.
 // class UniqueID {
 //   static int _counter = 0;
 
 //   static String generateID() {
 //     _counter++;
 //     return 'ID$_counter';
 //   }
 // }
 
// 14. Класс "Точка" и "Прямоугольник"
 // Создайте класс Point с координатами x и y. Реализуйте класс Rectangle, который содержит две точки (левая верхняя и правая нижняя). Реализуйте метод для вычисления площади прямоугольника.
 // class Point {
 //   double x;
 //   double y;
 
 //   Point(this.x, this.y);
 // }
 
 // class Rectangle {
 //   Point topLeft;
 //   Point bottomRight;
 
 //   Rectangle(this.topLeft, this.bottomRight);
 
 //   double getArea() {
 //     double width = bottomRight.x - topLeft.x;
 //     double height = topLeft.y - bottomRight.y;
 //     return width * height;
 //   }
 // }
 
// 15. Комплексные числа
 // Создайте класс ComplexNumber с полями для действительной и мнимой частей. Реализуйте методы для сложения, вычитания, умножения и деления комплексных чисел.
 // class ComplexNumber {
 //   double real;
 //   double imaginary;
 
 //   ComplexNumber(this.real, this.imaginary);
 
 //   ComplexNumber operator +(ComplexNumber other) {
 //     return ComplexNumber(real + other.real, imaginary + other.imaginary);
 //   }
 
 //   ComplexNumber operator -(ComplexNumber other) {
 //     return ComplexNumber(real - other.real, imaginary - other.imaginary);
 //   }
 
 //   ComplexNumber operator *(ComplexNumber other) {
 //     double realPart = real * other.real - imaginary * other.imaginary;
 //     double imaginaryPart = real * other.imaginary + imaginary * other.real;
 //     return ComplexNumber(realPart, imaginaryPart);
 //   }
 
 //   ComplexNumber operator /(ComplexNumber other) {
 //     double denominator = other.real * other.real + other.imaginary * other.imaginary;
 //     double realPart = (real * other.real + imaginary * other.imaginary) / denominator;
 //     double imaginaryPart = (imaginary * other.real - real * other.imaginary) / denominator;
 //     return ComplexNumber(realPart, imaginaryPart);
 //   }
 // }
 
// 16. Перегрузка операторов: Матрица
 // Создайте класс Matrix, представляющий двумерную матрицу. Реализуйте методы для сложения и умножения матриц. Продемонстрируйте перегрузку методов.
 // class Matrix {
 //   List<List<int>> matrix;
 
 //   Matrix(this.matrix);
 
 //   Matrix operator +(Matrix other) {
 //     int rows = matrix.length;
 //     int cols = matrix[0].length;
 //     List<List<int>> result = List.generate(rows, (i) => List.filled(cols, 0));
 
 //     for (int i = 0; i < rows; i++) {
 //       for (int j = 0; j < cols; j++) {
 //         result[i][j] = matrix[i][j] + other.matrix[i][j];
 //       }
 //     }
 //     return Matrix(result);
 //   }
 
 //   Matrix operator *(Matrix other) {
 //     int rows = matrix.length;
 //     int cols = other.matrix[0].length;
 //     List<List<int>> result = List.generate(rows, (i) => List.filled(cols, 0));
 
 //     for (int i = 0; i < rows; i++) {
 //       for (int j = 0; j < cols; j++) {
 //         for (int k = 0; k < matrix[0].length; k++) {
 //           result[i][j] += matrix[i][k] * other.matrix[k][j];
 //         }
 //       }
 //     }
 //     return Matrix(result);
 //   }
 // }
 
// 17. Создание игры с использованием ООП
 // Реализуйте классы для небольшой текстовой игры, такие как Player, Enemy, Weapon, с полями и методами, описывающими их поведение.
 // class Player {
 //   String name;
 //   int health;
 
 //   Player(this.name, this.health);
 
 //   void attack(Enemy enemy) {
 //     print('$name атакует ${enemy.name}');
 //     enemy.takeDamage(10);
 //   }
 // }
 
 // class Enemy {
 //   String name;
 //   int health;
 
 //   Enemy(this.name, this.health);
 
 //   void takeDamage(int damage) {
 //     health -= damage;
 //     print('$name получил $damage урона. Осталось здоровья: $health');
 //   }
 // }
 
 // class Weapon {
 //   String name;
 //   int damage;
 
 //   Weapon(this.name, this.damage);
 
 //   void use() {
 //     print('Используется оружие: $name с уронением: $damage');
 //   }
 // }
 
// 18. Автоматизированная система заказов
 // Создайте классы Order, Customer, и Product. Реализуйте систему, где можно добавлять заказы, отображать общую стоимость заказа и просматривать историю заказов.
 // class Order {
 //   List<Product> products;
 
 //   Order(this.products);
 
 //   double getTotal() {
 //     return products.fold(0.0, (sum, product) => sum + product.price * product.quantity);
 //   }
 // }
 
 // class Customer {
 //   String name;
 //   List<Order> orders;
 
 //   Customer(this.name) : orders = [];
 
 //   void addOrder(Order order) {
 //     orders.add(order);
 //   }
 // }
 
 // class Product {
 //   String name;
 //   double price;
 //   int quantity;
 
 //   Product(this.name, this.price, this.quantity);
 // }
 
// 19. Наследование: Электроника
 // Создайте класс Device с полем brand и методами turnOn() и turnOff(). Реализуйте классы Smartphone и Laptop, которые наследуют от Device и добавляют уникальные методы, например, takePhoto() для смартфона.
 // class Device {
 //   String brand;
 
 //   Device(this.brand);
 
 //   void turnOn() {
 //     print('$brand включен');
 //   }
 
 //   void turnOff() {
 //     print('$brand выключен');
 //   }
 // }
 
 // class Smartphone extends Device {
 //   Smartphone(String brand) : super(brand);
 
 //   void takePhoto() {
 //     print('Фотография сделана');
 //   }
 // }
 
 // class Laptop extends Device {
 //   Laptop(String brand) : super(brand);
 
 //   void browse() {
 //     print('Браузинг в интернете');
 //   }
 // }
 
// 20. Игра "Крестики-нолики"
 // Разработайте классы для игры " //Крестики-нолики". Создайте класс Game, который управляет логикой игры, и классы Player, описывающие поведение игроков.
 
 // class Game {
 //   List<List<String>> board;
 //   String currentPlayer;
 
 //   Game() : board = List.generate(3, (_) => List.filled(3, ' ')), currentPlayer = 'X';
 
 //   void displayBoard() {
 //     for (var row in board) {
 //       print(row.join(' | '));
 //     }
 //   }
 
 //   bool makeMove(int row, int col) {
 //     if (board[row][col] == ' ') {
 //       board[row][col] = currentPlayer;
 //       currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
 //       return true;
 //     }
 //     return false;
 //   }
 // }
 
 // void main() {
 //   Game game = Game();
 //   game.displayBoard();
 // }
 
 
 