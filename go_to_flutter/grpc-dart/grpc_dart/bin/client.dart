import 'package:grpc/grpc.dart';
import 'package:grpc_dart/src/generated/chat.pbgrpc.dart';

Future<void> ConnectionWithServer(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 9000,
    options: const ChannelOptions(
      credentials: ChannelCredentials.insecure(),
    ),
  );
  final stub = ChatServiceClient(channel);

  final name = args.isNotEmpty ? args[0] : 'Hello world';

  try {
    final response = await stub.sayHello(
      Message()..body = name,
    );
    print('Greeter client received: ${response.body}');
  } catch (e) {
    print('Caught error: $e');
  }
  await channel.shutdown();
}
