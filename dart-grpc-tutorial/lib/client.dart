import 'package:grpc/grpc.dart';  
import 'package:grpc_tutorial/src/generated/todo.pbgrpc.dart'; // Import GRPC  

// Helper class to handle client methods. In the real world, you'd probably have wrappers aroudn each gRPC method call
class Client { 
  ClientChannel channel;  
  TodoClient stub;  

  Future<void> main(List<String> args) async {
      // Create a new channel with localhost and the server port 
      channel = ClientChannel('localhost',  
          port: 8001,  
          options:  // No credentials in this example
              const ChannelOptions(credentials: ChannelCredentials.insecure()));
      // Create the stub, which is the client that you interact with to get gRPC methods  
      stub = TodoClient(channel,  
          options: CallOptions(timeout: Duration(seconds: 30)));  
      try {
          // Create a new todo    
          final TodoItem todoItem = new TodoItem();  
          todoItem.text = "Test 1"; 
          // Send a request to the server to make the new item 
          var res = await stub.createTodo(todoItem);  
          // Prints the recieved item
          print(res);  

          // Create the void message
          final v = new voidNoParam();
          // Get a list of todos as a future  
          var todos = await stub.readTodos(v);  
          print(todos.items);  

          // Get the todos as a stream, listen to it, and print the values. If you run another client and create new todos, you'll see this stream get updated
          stub.readTodosStream(v).listen((value) {print(value); });  
    } catch (e) {
          print(e);
    }
     // Cleanup with shutdown
    await channel.shutdown();  
}
}

main() {  
  var client = Client();
  client.main([]);
}