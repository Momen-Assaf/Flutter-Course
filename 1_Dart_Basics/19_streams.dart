import 'dart:async';

void main() {
  final numberGnenerator = NumberGnenerator();

  StreamSubscription sub1 = numberGnenerator.stream.listen((event) {
    print("sub 1: $event");
  });
  late StreamSubscription sub2;
  Future.delayed(Duration(seconds: 5), () {
    sub2 = numberGnenerator.stream.listen((event) {
      print("sub 2: ${event * event}");
    });
  });

  Future.delayed(Duration(seconds: 10), (){
    sub1.cancel();
    // sub2.cancel();
  });
}

class NumberGnenerator {
  int _count = 0;

  StreamController<int> _controller = StreamController<
      int>.broadcast(); // broadcast makes the stream accessible to multiple subscribers, whereas without it only one listener can subscribe

  Stream<int> get stream => _controller.stream;

  NumberGnenerator() {
    final Timer timer = Timer.periodic(Duration(seconds: 1), (timer) {
      //function to be called on the duration
      //sends a event over the stream every second
      _controller.add(_count);
      _count++;
    });
    Future.delayed(Duration(seconds: 15), () {
      // closes the stream and the timer after 10 seconds
      timer.cancel();
      _controller.close();
    });
  }
}
// in stream subscription.listen() there is an onDone: (){ ...} function that happenes when the stream is has ended and an on Error function