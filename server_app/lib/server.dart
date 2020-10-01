import 'package:grpc/grpc.dart' as grpc;

import 'src/counter/counter.dart';

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([CounterService()]);
    await server.serve(port: 8085);
    print('Server listening on port ${server.port}...');
  }
}
