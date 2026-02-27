// Variables
var name = 'Joshua';
String? head = 'Joshua';
final String date = 'july';


// Loops
var message = StringBuffer('Dart is fun');
for (var i = 0; i < 5; i++) {
  message.write('!');
}

//while and do-while
while (!isDone()) {
  doSomething();
}

do {
  printLine();
} while (!atEndofPage());

// Break and continue
while (true) {
  if (shutDownRequested()) break;
  processIncomingRequest();
}

for (int i = 0; i < candidates.length; i++) {
  var candidate = candidates[i];
  if (candidate.yearsExperience <5 ) {
    continue;
  }
  candidate.interview();
}

// FUNCTIONS
// functions with type annotations
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// this remove the return
bool isNoble(int atomicNumer) => _nobaleGasses[atomicNumber] != null;


//Named parameters
void enableFlags({bool? bold, bool? hidden = false}) {
  ....
}


enableFlags(bold:true, hidden: false);

// Mandaory params
const Scrollbar({super.key, required Widget? child});