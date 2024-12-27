import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
          body: Center(
            child: Column(
              children: [
                const SizedBox(height: 100),
                Text('Country Name and falge'),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${model.countryName.data?[index].name}'),
                            Container(
                              height: 50,
                              width: 100,
                              child: SvgPicture.network(
                                model.countryName.data![index].flag!,
                                height: 50,
                                width: 100,
                                fit: BoxFit.fill,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
                )
                // Text('${model.countryName.data?[0].name}'),
                // const SizedBox(height: 20),
                // model.countryName.data?[0].flag == null
                //     ? const CircularProgressIndicator()
                //     :
                //
                // SvgPicture.network(
                //         model.countryName.data![0].flag!,
                //         height: 100,
                //         width: 100,
                //       )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
