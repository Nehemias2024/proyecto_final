import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("Registros del usuario"),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: InputDecoration(
                  hintText: 'Escriba aquí',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  )),
            ),
            // Text(
            //   'Registro del usuario',
            //   style: TextStyle(
            //     fontSize: 40,
            //     fontFamily: "TiltNeon",
            //   ),
            // ),
            DataTable(
                dividerThickness: 3,
                dataRowHeight: 40,
                headingRowHeight: 40,
                columnSpacing: 40,
                columns: [
                  DataColumn(
                      label: Text(
                        "Mes",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: "TiltNeon",
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                      numeric: true,
                      tooltip: "Mes del pago"),
                  DataColumn(
                    label: Text(
                      "Fecha",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: "TiltNeon",
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    numeric: true,
                  ),
                  DataColumn(
                    label: Text(
                      "Cancelo",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontFamily: "TiltNeon",
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0),
                    ),
                    numeric: true,
                  ),
                ],
                rows: [
                  DataRow(
                    cells: [
                      DataCell(Text("Enero")),
                      DataCell(Text("12/01/24")),
                      DataCell(Text("Si"))
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Febrero")),
                      DataCell(Text("12/02/24")),
                      DataCell(Text("Si")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Marzo")),
                      DataCell(Text("12/03/24")),
                      DataCell(Text("Si"))
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Abril")),
                      DataCell(Text("12/04/24")),
                      DataCell(Text("Si")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Mayo")),
                      DataCell(Text("12/05/24")),
                      DataCell(Text("Si"))
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Junio")),
                      DataCell(Text("12/06/24")),
                      DataCell(Text("No")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.orangeAccent;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Julio")),
                      DataCell(Text("12/07/24")),
                      DataCell(Text("Si")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Agosto")),
                      DataCell(Text("12/08/24")),
                      DataCell(Text("Si")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Septiembre")),
                      DataCell(Text("12/09/24")),
                      DataCell(Text("Si")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.lightBlue;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Octubre")),
                      DataCell(Text("12/10/24")),
                      DataCell(Text("No")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.orangeAccent;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Noviembre")),
                      DataCell(Text("12/11/24")),
                      DataCell(Text("No")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.orangeAccent;
                      },
                    ),
                  ),
                  DataRow(
                    cells: [
                      DataCell(Text("Diciembre")),
                      DataCell(Text("12/12/24")),
                      DataCell(Text("No")),
                    ],
                    color: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.orangeAccent;
                      },
                    ),
                  ),
                ]),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                child: Text(
                  'Volver',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontFamily: 'TiltNeon',
                  ),
                ),
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}


//  appBar: AppBar(
//         title: Text("Pagina menú"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text("Volver"),
//         ),
//       ),