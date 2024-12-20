import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statmanagment/country/country_provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  State<CountryScreen> createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CountryProvider(),
      child: Consumer<CountryProvider>(
        builder: (context, model, child) => Scaffold(
          body: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text('this is data ${model.countryName.data?[0].name}'),
              SizedBox(
                height: 20,
              ),
              Text(' ${model.countryName.data?[0].flag}'),
              model.countryName.data?[0].flag == null
                  ? CircularProgressIndicator()
                  : Image.network(
                      model.countryName.data![2].flag!,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
