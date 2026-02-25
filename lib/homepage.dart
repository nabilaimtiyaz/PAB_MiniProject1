import 'package:flutter/material.dart';
import 'input_data.dart';
import 'rekap_data.dart';

class HomePage extends StatelessWidget {
  final Color primaryPink = const Color(0xFFE75480);
  final Color softPink = const Color(0xFFFCE4EC);
  final Color bgGrey = const Color(0xFFF3F4F6);

  void showMapelDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
      ),
      builder: (_) {
        return Container(
          padding: const EdgeInsets.all(25),
          height: 280,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pilih Mata Pelajaran",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              buildMapelTile(context, "Matematika"),
              buildMapelTile(context, "Bahasa Inggris"),
              buildMapelTile(context, "Informatika"),
            ],
          ),
        );
      },
    );
  }

  Widget buildMapelTile(BuildContext context, String mapel) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: 5),
      leading: CircleAvatar(
        backgroundColor: softPink,
        child: Icon(Icons.menu_book, color: primaryPink),
      ),
      title: Text(mapel),
      onTap: () {
        Navigator.pop(context);
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) =>
                  InputDataPage(selectedMapel: mapel)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 450),
          child: Column(
            children: [

              const SizedBox(height: 60),

              /// LOGO AREA
              Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: primaryPink,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: primaryPink.withOpacity(0.4),
                      blurRadius: 25,
                      offset: const Offset(0, 10),
                    )
                  ],
                ),
                child: const Icon(Icons.school,
                    color: Colors.white, size: 50),
              ),

              const SizedBox(height: 20),

              const Text(
                "Intellecta Bimbel",
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),

              const Text(
                "Smart Student Management",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 50),

              buildMainButton(
                context,
                icon: Icons.person_add_alt_1,
                text: "Input Data Siswa",
                onTap: () => showMapelDialog(context),
              ),

              const SizedBox(height: 20),

              buildMainButton(
                context,
                icon: Icons.dashboard_outlined,
                text: "Rekap Data Siswa",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => RekapDataPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMainButton(
      BuildContext context,
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 18, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 8),
            )
          ],
        ),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: softPink,
              child: Icon(icon, color: primaryPink),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w600, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}