import 'package:flutter/material.dart';
import 'rekap_data.dart';

class InputDataPage extends StatefulWidget {
  final String selectedMapel;
  final Map<String, String>? student;

  InputDataPage({required this.selectedMapel, this.student});

  @override
  _InputDataPageState createState() => _InputDataPageState();
}

class _InputDataPageState extends State<InputDataPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController nama = TextEditingController();
  TextEditingController ttl = TextEditingController();
  TextEditingController alamat = TextEditingController();
  TextEditingController nohp = TextEditingController();
  TextEditingController sekolah = TextEditingController();
  TextEditingController nohpOrtu = TextEditingController();

  String kelas = "10";
  String jam = "13.00-14.30";

  @override
  void initState() {
    super.initState();
    if (widget.student != null) {
      nama.text = widget.student?['Nama'] ?? '';
      ttl.text = widget.student?['TTL'] ?? '';
      alamat.text = widget.student?['Alamat'] ?? '';
      nohp.text = widget.student?['No HP'] ?? '';
      sekolah.text = widget.student?['Sekolah'] ?? '';
      nohpOrtu.text = widget.student?['No HP Ortu'] ?? '';
      kelas = widget.student?['Kelas'] ?? '10';
      jam = widget.student?['Jam Bimbel'] ?? '13.00-14.30';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form ${widget.selectedMapel}"),
        backgroundColor: Color(0xFFE75480),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [

              buildField(nama, "Nama"),
              buildField(ttl, "Tempat, Tanggal Lahir"),
              buildField(alamat, "Alamat"),
              buildField(nohp, "No HP"),
              buildField(sekolah, "Asal Sekolah"),
              buildField(nohpOrtu, "No HP Orang Tua"),

              DropdownButtonFormField(
                value: kelas,
                items: ["10", "11", "12"]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text("Kelas $e"),
                        ))
                    .toList(),
                onChanged: (val) => setState(() => kelas = val!),
                decoration: InputDecoration(labelText: "Kelas"),
              ),

              SizedBox(height: 15),

              DropdownButtonFormField(
                value: jam,
                items: [
                  "13.00-14.30",
                  "15.00-16.30",
                  "19.00-20.30"
                ]
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (val) => setState(() => jam = val!),
                decoration: InputDecoration(labelText: "Jam Bimbel"),
              ),

              SizedBox(height: 30),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFE75480),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {

                    Map<String, String> newData = {
                      "Nama": nama.text,
                      "TTL": ttl.text,
                      "Alamat": alamat.text,
                      "No HP": nohp.text,
                      "Sekolah": sekolah.text,
                      "Kelas": kelas,
                      "No HP Ortu": nohpOrtu.text,
                      "Jam Bimbel": jam,
                      "Mata Pelajaran": widget.selectedMapel,
                    };

                    if (widget.student != null) {
                      int index = RekapDataPage.students.indexOf(widget.student!);
                      RekapDataPage.students[index] = newData;
                    } else {
                      RekapDataPage.students.add(newData);
                    }

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Data berhasil disimpan 🎉"),
                        backgroundColor: Colors.green,
                      ),
                    );

                    Future.delayed(Duration(milliseconds: 800), () {
                      Navigator.pop(context);
                    });
                  }
                },
                child: Text("Simpan"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildField(TextEditingController c, String label) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: c,
        validator: (val) =>
            val!.isEmpty ? "$label tidak boleh kosong" : null,
        decoration: InputDecoration(
          labelText: label,
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}