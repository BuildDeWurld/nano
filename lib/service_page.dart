import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'edit_service_details_page.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Icon(CupertinoIcons.add),
        centerTitle: true,
        title: const Text(
          "Service Details",
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
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  "assets/images/test.png",
                  fit: BoxFit.fill,
                  height: 200,
                  width: 400,
                ),
              ),
              Row(
                children: [
                  const Text(
                    "Mechanical Service",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (index) => const Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 18,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Text(
                            //   '${index + 1}',
                            // )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Working Hours & Days",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Monday - Sunday  ",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "8:00AM-12:00PM",
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Text(
                    "Set your availability",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Let your client know your are",
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(children: [
                        const Text(
                          "offline",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Switch(
                            activeColor: Colors.greenAccent,
                            value: true,
                            onChanged: (value) {})
                      ]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "23456",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        Text("Order Completion"),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                    ),
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "23456",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                        Text("Order Completion"),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 8,
                  right: 8,
                ),
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Registered"),
                    Container(
                      padding: const EdgeInsets.only(
                        left: 4,
                        right: 4,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Row(children: [
                        Icon(Icons.credit_card),
                        Text(
                          "456 Days Ago",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const EditServiceDetailsPage();
                  }));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.greenAccent.shade200),
                  height: 50,
                  width: 400,
                  child: const Center(
                      child: Text(
                    "Edit Services",
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
