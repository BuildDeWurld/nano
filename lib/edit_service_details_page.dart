import 'dart:ui';

import 'package:flutter/material.dart';

class EditServiceDetailsPage extends StatefulWidget {
  const EditServiceDetailsPage({super.key});

  @override
  State<EditServiceDetailsPage> createState() => _EditServiceDetailsPageState();
}

class _EditServiceDetailsPageState extends State<EditServiceDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Edit Service Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Stack(children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                      child: Image.asset(
                        "assets/images/test.png",
                        fit: BoxFit.fill,
                        height: 150,
                        width: 400,
                      ),
                    )),
                BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0)),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Container(
                    padding: const EdgeInsets.only(
                      right: 8,
                      left: 8,
                      top: 4,
                      bottom: 4,
                    ),
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 187, 238, 213)),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.camera),
                          Text("Replace Service Logo")
                        ]),
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Company Name",
                    style: TextStyle(color: Colors.greenAccent),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 2, color: Colors.greenAccent),
                  ),
                  // filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.greenAccent, style: BorderStyle.solid),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Set Working Hours",
                    style: TextStyle(color: Colors.greenAccent),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropdownMenu(
                      width: 150,
                      label: Text("Monday - Sunday"),
                      dropdownMenuEntries: []),
                  DropdownMenu(
                      width: 150,
                      label: Text("8:00AM-4:00PM"),
                      dropdownMenuEntries: []),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Select Service",
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownMenu(
                          width: 150,
                          label: Text("8:00AM-4:00PM"),
                          dropdownMenuEntries: []),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Select Skill",
                        style: TextStyle(color: Colors.greenAccent),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      DropdownMenu(
                          width: 150,
                          label: Text("8:00AM-4:00PM"),
                          dropdownMenuEntries: []),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Describe Your Service",
                    style: TextStyle(color: Colors.greenAccent),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  // enabledBorder: const OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.greenAccent),
                  // ),
                  hintText:
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                  filled: true,
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(style: BorderStyle.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent.shade200),
                  height: 50,
                  width: 400,
                  child: const Center(
                      child: Text(
                    "Save Changes",
                    style: TextStyle(color: Colors.white70),
                  )),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
