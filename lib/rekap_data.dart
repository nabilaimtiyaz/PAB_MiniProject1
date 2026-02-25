import 'package:flutter/material.dart';
import 'input_data.dart';
import 'student_card.dart';

class RekapDataPage extends StatefulWidget {
  static List<Map<String, String>> students = [];

  @override
  _RekapDataPageState createState() => _RekapDataPageState();
}

class _RekapDataPageState extends State<RekapDataPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rekap Data"),
        backgroundColor: Color(0xFFE75480),
      ),
      body: RekapDataPage.students.isEmpty
        ? Center(
            child: Text(
              "Belum ada data siswa",
              style: TextStyle(fontSize: 16),
            ),
          )
        : ListView.builder(
            itemCount: RekapDataPage.students.length,
            itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(15),
            child: ListTile(
              title: Text(
                  RekapDataPage.students[index]['Nama'] ?? 'Tanpa Nama',
                ),
                subtitle: Text(
                  RekapDataPage.students[index]['Mata Pelajaran'] ?? '',
                ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [

                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              StudentCard(student: RekapDataPage.students[index]),
                        ),
                      );
                    },
                  ),

                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => InputDataPage(
                            selectedMapel:
                              RekapDataPage.students[index]['Mata Pelajaran'] ?? '',
                            student: RekapDataPage.students[index],
                          ),
                        ),
                      );

                      if (result != null) {
                        setState(() {
                          RekapDataPage.students[index] = result;
                        });
                      }
                    },
                  ),

                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        RekapDataPage.students.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}