void main()
{
  List<String>data=["Rajkot","Surat"];
  data.add("Mango");

  print("data element: $data");

  List<String>data2=["Mitesh","Dhvani"];
  data2.add("Mango Shake");

  print('data element: $data2');

  data.addAll(data2);

  print("add element: $data");
  data.remove("Mango");

  print("remove element: $data");
}