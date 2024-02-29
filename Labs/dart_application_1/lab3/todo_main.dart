import 'task.dart';
import 'todo_list.dart';

void main() {
  var todoList = ToDoList();

  todoList.addTask(Task('Помыть посуду', 'В раковине башня из тарелок', false));
  todoList.addTask(Task('Пропылесосить', 'Description 2', true));
  todoList.addTask(Task('Высушить беьё', 'Description 3', false));

  todoList.displayAllTasks();

  print('\nЗавершенные задачи:');
  todoList.displayCompletedTasks();

  print('\nНезавершенные задачи:');
  todoList.displayUnfinishedTasks();

  print('\nЗавершенные задачи были скрыты.');
  todoList.clearCompletedTasks();

  print('\nСписок задач:');
  todoList.displayAllTasks();
}