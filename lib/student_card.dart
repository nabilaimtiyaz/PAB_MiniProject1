import 'package:flutter/material.dart';

class StudentCard extends StatelessWidget {
  final Map<String, String> student;

  StudentCard({required this.student});

  final Color primaryPink = const Color(0xFFE75480);
  final Color softPink = const Color(0xFFFCE4EC);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      body: Center(
        child: Stack(
          children: [

            /// ===== CARD =====
            Container(
              width: 350,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [primaryPink, primaryPink.withOpacity(0.85)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 30), // kasih space buat tombol

                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person,
                        size: 35, color: primaryPink),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    student['Nama'] ?? 'Nama Siswa',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  Text(
                    student['Mata Pelajaran'] ?? '',
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 13,
                    ),
                  ),

                  const SizedBox(height: 20),

                  Divider(color: Colors.white.withOpacity(0.5)),

                  const SizedBox(height: 15),

                  buildRow("Sekolah", student['Sekolah']),
                  buildRow("Kelas", student['Kelas']),
                  buildRow("Jam", student['Jam Bimbel']),
                  buildRow("No HP", student['No HP']),
                ],
              ),
            ),

            /// ===== BACK BUTTON =====
            Positioned(
              top: 10,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 18,
                  child: Icon(Icons.arrow_back,
                      size: 20, color: primaryPink),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 12,
            ),
          ),
          Text(
            value ?? "-",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}