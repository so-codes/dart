void main() {
  var myMap = {'studname': 'ABC', 'rollNo': 38, 'div': 'A'};

  print(myMap);

  print('The value of student name key is ${myMap['studname']}');

  print('The value of address key is ${myMap['address']} ');

  myMap['address'] = 'Mumbai'; // insert it new pair as address does not exist

  myMap['rollNo'] = 40; //update value as roll no already exists

  var mapContents = new Map();

  mapContents['EmpID'] = 'E001'; // inserting new key and value pairs

  mapContents['Dept'] = 'Design'; // inserting as a new key and value pair

  mapContents['IsParticipant'] = true;

  mapContents['Dept'] =
      'Testing'; // update the existing dept key and value pair

  print(mapContents);

  print('isEmpty : ${mapContents.isEmpty}');

  print('Length : ${mapContents.length}');

  print('Keys : ${mapContents.keys}');

  print('Values : ${mapContents.values}');

  mapContents.addAll({'TotalProjects': 16, 'Badges': 7});

  print('\nmapContents');

  mapContents.forEach((k, v) => print('${k} :: ${v}'));

//mapContents.removeWhere((key,value)=> value<10);

//mapContents.remove('Badges');

  print(mapContents);

  mapContents.clear();

  print('After clear function ${mapContents}');
}
