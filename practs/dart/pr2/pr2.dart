void main() {
  List max_temp = [
    'nagpur',
    21,
    'nashik',
    22,
    'navi mumbai',
    23,
    'kolhapur',
    25,
    'mumbai',
    25,
    'thane',
    26,
    'akola',
    18,
    'amravati',
    26,
    'jalgaon',
    27,
    'solapur',
    24,
    'aurangabad',
    29,
    'malegoan',
    30,
    'latur',
    32,
    'dhule',
    35,
    'jalna',
    31
  ];
  List min_temp = [
    'nagpur',
    1,
    'nashik',
    2,
    'navi mumbai',
    3,
    'kolhapur',
    5,
    'mumbai',
    4,
    'thane',
    6,
    'akola',
    -8,
    'amravati',
    -2,
    'jalgaon',
    7,
    'solapur',
    8,
    'aurangabad',
    9,
    'malegoan',
    0,
    'latur',
    -3,
    'dhule',
    12,
    'jalna',
    18
  ];

  // print(max_temp);
  // print(min_temp);
  int max = max_temp[1];
  String city = max_temp[0];
  int min = min_temp[1];
  String city1 = min_temp[0];
  for (int i = 1; i < max_temp.length - 1; i += 2) {
    if (max < max_temp[i]) {
      max = max_temp[i];
      city = max_temp[i - 1];
    }

    if (min > min_temp[i]) {
      min = min_temp[i];
      city1 = min_temp[i - 1];
    }
  }
  print("Max temp in $city is $max");
  print("Min temp in $city1 is $min");
}
