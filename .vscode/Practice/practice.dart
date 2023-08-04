void main() {
  /*
  input :
    String --> "Name", "Gender"
    numbers --> "PersonID"-(int),"Age"-(int) and "Salary"-(double)
    
  Output : 
    print "Salary" from the map
  */

  Map<String, dynamic> worker = {
    'PersonID': 775,
    'Name': 'Md Shamim Ahamed',
    'Age': 20,
    'Salary': 20000.0,
    'Gender': 'Male',
  };

  print(worker['Salary']);
}
