import 'package:grpc/grpc_web.dart';
import 'package:client_app/src/generated/counter.pbgrpc.dart';

const RPC_SERVER_URI = String.fromEnvironment("RPC_SERVER_URI",
    defaultValue: "http://localhost:8085");

class CounterBloc {
  final CounterClient _client;
  
  CounterBloc()
      : _client =
            CounterClient(GrpcWebClientChannel.xhr(Uri.parse(RPC_SERVER_URI)));
  
  Stream<Count> get count =>
      _client.subscribeCount(Empty());

  incrementContBy(Count count) => _client.incrementCount(count);
}
