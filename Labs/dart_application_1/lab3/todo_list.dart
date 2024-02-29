import 'task.dart';

class ToDoList {
  List<Task> tasks = [];
  
  void addTask(Task task) {
    tasks.add(task);
  }
  
  void removeTask(String title) {
    tasks.removeWhere((task) => task.name == title);
  }
  
  void changeTaskStatus(String title, bool isCompleted) {
    tasks.firstWhere((task) => task.name == title, orElse: () => Task('', '', false)).isCompleted = isCompleted;
  }

  ///////////////////////////////////////////////////////////////////
  
  void displayAllTasks() {
    print('Задачи:');
    tasks.forEach((task) {
      print('Задача: ${task.name}, Описание: ${task.description}, Завершена: ${task.isCompleted}');
    });
  }
  
  void displayCompletedTasks() {
    print('Законченные задачи:');
    tasks.where((task) => task.isCompleted).forEach((task) {
      print('Задача: ${task.name}, Описание: ${task.description}');
    });
  }
  
  void displayUnfinishedTasks() {
    print('Незаконченные задачи:');
    tasks.where((task) => !task.isCompleted).forEach((task) {
      print('Задача: ${task.name}, Описание: ${task.description}');
    });
  }
  
  void clearCompletedTasks() {
    tasks.removeWhere((task) => task.isCompleted);
  }
}