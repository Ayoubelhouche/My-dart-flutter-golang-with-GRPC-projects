import 'dart:html';

import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';
import 'package:grpc_tutorial/src/generated/todo.pbgrpc.dart'; // Import the protofbuff files

class TodoService extends TodoServiceBase {
  TodoItems todos = new TodoItems();
  @override
  Future<TodoItem> createTodo(ServiceCall call, TodoItem request) async {
    TodoItem todoItem = new TodoItem();
    todoItem.text = request.text;
    todoItem.id = todos.$_getList(1).length + 1;
    todos.items.add(todoItem);
    return todoItem;
  }
/**
    * Read the todos as a Future
    **/
    @override  
    Future<TodoItems> readTodos(ServiceCall call, voidNoParam request) async {  
        return todos;  
    }  

    /**
     * Get all of the todos as a stream
     **/
    @override  
    Stream<TodoItem> readTodosStream(ServiceCall call, voidNoParam request) async* {  
        // Iterate through all of the todos and 'yield' each todo (returns it to the stream)
        for (var todo in todos.items) {  
            yield todo;  
        }
    }
}  

/**
* gRPC Server
**/
class TodoServer {  
    Future<void> main(List<String> args) async {  
        final server = Server([TodoService()]);  // Create a new server from the TodoService
        await server.serve(port: 9000); // Start the server on port 9000
        print('Server listening on port ${server.port}...');  
}
}
main() {  
  TodoServer todoServer = new TodoServer();  
  todoServer.main([]);  
}