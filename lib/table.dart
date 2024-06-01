import 'package:fekra/person.dart';
import 'package:flutter/material.dart';
import 'person.dart' ;
class TablePage extends StatefulWidget {
  const TablePage({super.key});

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  bool sortValue = true ;
  List<person> persons =[
    person( 'Ahmed',  'mail' , 12 ) ,
    person( 'Mazen',  'mail' , 20 ),
    person( 'Wafaa',  'femail' , 18 )
  ] ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('table'),),
      body: Center(child: DataTable(
        sortColumnIndex: 2,
        sortAscending: sortValue,
        columns: [
        DataColumn(label: Text('name')),
        DataColumn(label: Text('gender')),
        DataColumn(
          numeric: true,
         label: Text('age'),
         onSort: (index, isAscending) {
         sortValue = isAscending ;
         if (sortValue == false) {
           //sort Ascending
           //sortAscending();
           sortDeAscending();
         } else {
          setState(() {
            
          });
         }
         setState(() {} );
         }
        ),
      ],
       rows: getDataRow(),
        ),
      ),
    );
    
    
  }

  void sortAscending () {
    for (var i = 0; i < getDataRow().length; i++) {
             if(i+ 1 == persons.length) break;
             if (persons[i].age < persons[i+1].age) {
               continue;
             }else {
              var temp =persons[i+1] ;
              persons[i+1] = persons[i];
              persons[i] = temp;
              sortAscending();
             }
           }
  }

  void sortDeAscending () {
    for (var i = 0; i < getDataRow().length; i++) {
             if(i+ 1 == persons.length) break;
             if (persons[i].age > persons[i+1].age) {
               continue;
             }else {
              var temp =persons[i+1] ;
              persons[i+1] = persons[i];
              persons[i] = temp;
              sortDeAscending();
             }
           }
  }

 List<DataRow> getDataRow() {
  List<DataRow> rows = [];
   
   for (var person in persons) {
     rows.add(DataRow(cells: [
      DataCell(Text(person.name)),
      DataCell(Text(person.gender)),
      DataCell(Text(person.age.toString()))
     ]),
     );   
   }
   return rows;
 }
}