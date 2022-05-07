import 'package:testapp/generated/hello.pb.dart';
import 'package:testapp/generated/hello.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class cws {
  cws q = new cws();
  Future<void> ConnectionWithServer() async {
    final channel = ClientChannel(
      '10.0.2.2',
      port: 9000,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    await channel.shutdown();
  }
}
