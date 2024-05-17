import 'package:flutter/material.dart';
import 'package:infopage_ta/ScholarshipCard.dart';
import 'package:infopage_ta/ScholarshipDetailCard.dart';
import 'package:infopage_ta/CategoryChip.dart';

class ScholarshipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/image2.png'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'String value',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.bookmark, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Best Scholarship',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ScholarshipCard(name: 'juan', location: 'malang', color: Colors.grey),
                    ScholarshipCard(name: 'ahmad', location: 'malang', color: Colors.grey),
                    ScholarshipCard(name: 'example', location: 'city', color: Colors.red),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Scholarship For You',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: [
                  CategoryChip(label: 'ALL'),
                  CategoryChip(label: 'MAHASISWA'),
                  CategoryChip(label: 'SMK'),
                  CategoryChip(label: 'SMA'),
                  CategoryChip(label: 'SD'),
                  CategoryChip(label: 'TK'),
                  CategoryChip(label: 'PAUD'),
                ],
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'Mahasiswa',
                title: 'Ada kabar gembira bagi mahasiswa/i asal Kota Pekanbaru!',
                date: '22 Februari 2023',
                imageUrl: 'assets/image1.png', // Ganti dengan path gambar beasiswa Anda
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'SMA',
                title: 'Sudah siap menjadi salah satu   KOMINFO SCHOLARSHIP AWARDEES   !?',
                date: 'expire date',
                imageUrl: 'assets/image3.png', // Ganti dengan path gambar beasiswa Anda
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'Mahasiswa',
                title: 'article name and headline',
                date: 'expire date',
                imageUrl: 'assets/image3.png', // Ganti dengan path gambar beasiswa Anda
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'Mahasiswa',
                title: 'article name and headline',
                date: 'expire date',
                imageUrl: 'assets/image3.png', // Ganti dengan path gambar beasiswa Anda
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'Mahasiswa',
                title: 'article name and headline',
                date: 'expire date',
                imageUrl: 'assets/image3.png', // Ganti dengan path gambar beasiswa Anda
              ),
              SizedBox(height: 16),
              ScholarshipDetailCard(
                category: 'Mahasiswa',
                title: 'article name and headline',
                date: 'expire date',
                imageUrl: 'assets/image3.png', // Ganti dengan path gambar beasiswa Anda
              ),
            ],
          ),
        ),
      ),
    );
  }
}