import 'package:grpc/grpc.dart';
import 'package:rxdart/rxdart.dart';
import '../generated/counter.pb.dart';
import '../generated/counter.pbgrpc.dart';

class CounterService extends CounterServiceBase {
  int _count = 0;
  final BehaviorSubject _counterSubject = BehaviorSubject<int>();
  int get count => _count;
  set count(int number) {
    _count = number;
    _counterSubject.add(_count);
  }

  @override
  Future<Count> getCount(ServiceCall call, Empty request) {
    return Future.value(Count()..count = _count);
  }

  @override
  Future<Empty> incrementCount(ServiceCall call, Count request) {
    count = request.count;
    return Future.value(Empty());
  }

  @override
  Stream<Count> subscribeCount(ServiceCall call, Empty request) {
    return _counterSubject.stream.map((event) => Count()..count = event);
  }
}
