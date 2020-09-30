import 'package:grpc/grpc.dart' as grpc;

import 'counter/counter.dart';

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([CounterService()]);
    await server.serve(port: 8080);
    print('Server listening on port ${server.port}...');
  }
}
