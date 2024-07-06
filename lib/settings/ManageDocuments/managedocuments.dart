import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms/color.dart';

class ManageDocuments extends StatefulWidget {
  const ManageDocuments({super.key});

  @override
  State<ManageDocuments> createState() => _ManageDocumentsState();
}

class _ManageDocumentsState extends State<ManageDocuments> {
  // to show the list of documents
  List<Documents> documents = [
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
    Documents(
        title: 'Offer Letter.docx',
        subtitle: '250 KB. Last updated Dec 10,2023'),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          'Manage Documents',
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          )),
        ),
        centerTitle: true,
      ),
          // to show documents
          body: ListView.builder(
        itemCount: documents.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey.shade400,
                  child: const Icon(
                    Icons.file_present_sharp,
                    color: appColor2,
                  ),
                ),
                title: Text(
                  documents[index].title,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
                ),
                subtitle: Text(
                  documents[index].subtitle,
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey,
                  )),
                ),
                trailing: const Icon(
                  Icons.cloud_download_sharp,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                  width: 330,
                  child: Divider(
                    height: 10,
                  )),
            ],
          );
        },
      ),
    ));
  }
}
// to show the data of documents
class Documents {
  String title;
  String subtitle;
  Documents({required this.title, required this.subtitle});
}
