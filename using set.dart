void main()
{
  Set<dynamic> no = Set();
  no.add(2);
  no.add(4);
  no.add(9);
  no.add(1);

  print(no);

  Set<String> no2 = Set();
  no2.add("a");
  no2.add("b");
  no2.add("c");

  print(no2);

  no.addAll(no2); // no2 all data add on no

  no.remove(6);

  print("no element: $no");

  print(no.isNotEmpty);
  print(no2.isEmpty);


}