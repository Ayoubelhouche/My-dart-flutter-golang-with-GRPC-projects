import 'package:grpc/grpc.dart';

class GrpcFlutterClient {
  static ClientChannel client=
  ClientChannel("192.168.0.0",
          port: 8002,
          options: const ChannelOptions(
              credentials: ChannelCredentials.insecure(),
              idleTimeout: Duration(minutes: 1)));

  static ClientChannel getClient() {
    return client;
  }
}
