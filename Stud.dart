class Student{

  String name;
  int roll_no;
  late double gpa;
  late int credits;
  late int numberOfCuricularActivities;
  late int Attendance;


  Student({required this.name,required this.roll_no});
  Student.full({required this.name,required this.roll_no,required this.Attendance,required this.credits,required this.gpa
  ,required this.numberOfCuricularActivities
  });

}