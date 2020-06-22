import 'package:demomongodb/models/customers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class CustomerList extends StatefulWidget {
  @override
  _CustomerListState createState() => _CustomerListState();
}

class _CustomerListState extends State<CustomerList> {

  String _nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Customers - APIs"),
      ),
      body: scaffoldCustomerListBody,
    );
  }

  Widget get scaffoldCustomerListBody {
    return FutureBuilder<dynamic> (
      future: fetchCustomer(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasError)
          return Text("Error: ${snapshot.error}");
        if (!snapshot.hasData)
          return Text("No Customer found");
        final List<Customers> customers = Customers.fromJsonArray(snapshot.data.body);
        customers.forEach((element) {_nome = element.nome;});
        return Container(
          child: Text(
            _nome,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }

  // Localhost = 127.0.0.1 = 10.0.2.2 (este últmo para emuladores)
  //
  Future<dynamic> fetchCustomer() {
    final String url = "http://10.0.2.2:5000/customers";
    return get(url);
  }

}
