import 'package:flutter/material.dart';

import 'employee.dart';
import 'employee_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final EmployeeBloc _employeeBloc = EmployeeBloc();

  @override
  void dispose() {
    _employeeBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee Tex'),
      ),
      body: StreamBuilder<List<Employee>>(
        stream: _employeeBloc.employeeListStream,
        builder:
            (BuildContext context, AsyncSnapshot<List<Employee>> snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                elevation: 5.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        '${snapshot.data![index].id}.',
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            '${snapshot.data![index].name}.',
                            style: const TextStyle(fontSize: 18.0),
                          ),
                          Text(
                            '₹ ${snapshot.data![index].salary}.',
                            style: const TextStyle(fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_up,
                        color: Colors.green,
                      ),
                      onPressed: () {
                        _employeeBloc.employeeSalaryIncrement
                            .add(snapshot.data![index]);
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.thumb_down,
                        color: Colors.red,
                      ),
                      onPressed: () {
                        _employeeBloc.employeeSalaryDecrement
                            .add(snapshot.data![index]);
                      },
                    )
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
