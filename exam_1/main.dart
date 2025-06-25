import 'dart:io';

void main(){
  List<Map<String, dynamic>> students = [];
  print('Enter number of students: ');
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    stdout.write('Enter name of student ${i + 1}: ');
    String name = stdin.readLineSync()!;
    stdout.write('Enter scores of $name (must be comma separated): ');
    List<int> scores = stdin.readLineSync()!.split(',').map((e) => int.parse(e.trim())).toList();

    students.add({"name": name, "scores": scores});
  }

  Map<String, double>avgRes={};

  for(var s in students){
    String name=s['name'];
    List<int>marks = s['scores'];

    double sum =0;
    int count = 0;
    for(int m in marks){
      count++;
      sum+=m;
    }
    sum/=count;
    sum= double.parse(sum.toStringAsFixed(2));
    avgRes[name]=sum;
  }

  var sortedEntries = avgRes.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));

  for(var avgMark in sortedEntries){
    print('\'${avgMark.key}\': ${avgMark.value}');
  }

}