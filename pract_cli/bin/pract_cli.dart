import 'package:pract_cli/logic.dart';
import 'package:pract_cli/functions.dart';
import 'package:pract_cli/class.dart';
import 'package:pract_cli/async.dart';

void main() async {
  // print("Using function");
  // showWinners(scores);

  // const p1 = Person("Joshua", 25);
  // var p2 = Person.guest("De Leon");
  // print(p1);
  // print(p2);

  //ASYNC
  print("simple await");
  String data = await fetchData();
  print(data);

  // async try
  print("then catchError");
  fetchData().then((data) => print(data)).catchError((e) => print(e));

  //try catch
  print("try block");
  try {
    String data = await fetchData();
    print(data);
  } catch (e) {
    print("Caught error: $e");
  }
}
