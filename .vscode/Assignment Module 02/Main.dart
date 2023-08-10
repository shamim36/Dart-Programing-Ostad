/*
Input:
      grades obtained by a student in
      various subjects: [85, 92, 78, 65, 88, 72]
Output:
       Student's average grade: 80.0 
      Rounded average: 80
      Passed (if Rounded Average >= 70)
      Failed (if Rounded Average <70)
*/
void main() {
  List<double> grades = [85, 92, 78, 65, 88, 72];
  double avg = AverageGrade(grades: grades);
  print(' Student\'s average grade: $avg');

  //round it to the nearest integer
  int roundedAvg = avg.round();
  print('Rounded average: $roundedAvg');

  if (roundedAvg < 70) {
    print('Failed');
  } else {
    print('Passed');
  }
}

/*
AverageGrade():
    Parameters :
                required List of grades
    double returns: 
                average Value of all the grades
*/
double AverageGrade({required List<double> grades}) {
  double sum = 0.0;
  for (double grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}
