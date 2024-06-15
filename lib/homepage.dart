import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    fetchData();
    super.initState();
  }

  fetchData() async {
    final dio = Dio(BaseOptions(
      followRedirects: true,
      maxRedirects: 5, // You can adjust this value
    ));
    try {
      final response = await dio.get('https://catfact.ninja/fact');
      log('message');
      log(response.toString());
    } catch (e) {
      log('failed $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
