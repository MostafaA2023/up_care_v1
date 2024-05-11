import 'package:datepicker_dropdown/datepicker_dropdown.dart';
import 'package:datepicker_dropdown/order_format.dart';
import 'package:flutter/material.dart';
import 'package:up_care_v1/screens/chat_screen/chat_screen_view.dart';
import 'package:up_care_v1/screens/home_screen/home_layout.dart';
import 'package:up_care_v1/screens/payment_screen/payment_screen_view.dart';
import 'package:up_care_v1/screens/register_screen/widgets/custom_material_button.dart';


class AppointmentScreenView extends StatefulWidget {
  const AppointmentScreenView({super.key});

  static const routeName = "appointment_screen";

  @override
  State<AppointmentScreenView> createState() => _AppointmentScreenViewState();
}

class _AppointmentScreenViewState extends State<AppointmentScreenView> {
  String selectedItem = "Appointment";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidate = AutovalidateMode.disabled;
  int _selectedDay = 18;
  int _selectedMonth = 3;
  int _selectedYear = 2024;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB0D7FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 70,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 50,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 25,
                color: Color(0xFF3A80F8),
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                    icon: const Icon(
                      Icons.menu_outlined,
                      size: 30,
                      color: Color(0xFF3A80F8),
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.20,
              color: const Color(0xFF64B3FF),
              child: const Text(
                "Quick Access",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
              child: Row(
                children: [
                  const ImageIcon(
                    AssetImage("assets/images/home.png"),
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomeLayout.routeName);
                    },
                    child: const Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 35.0, vertical: 4.0),
              child: Row(
                children: [
                  const Icon(Icons.payment,color: Colors.grey,),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, PaymentScreenView.routeName);
                    },
                    child: const Text(
                      "Payment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              "assets/images/doctor2.png",
              height: 230,
              fit: BoxFit.fitHeight,
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFF6F6F7),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Dr Benedet Montero",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, ChatScreenView.routeName);
                            },
                            child: const ImageIcon(
                              AssetImage("assets/images/chat.png"),
                              color: Color(0xFF3A80F8),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color(0xFFFDFDFD),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                offset: Offset.zero,
                                blurRadius: 10.0,
                                spreadRadius: 0.0,
                              )
                            ],
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 20, bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Visiting hours"),
                                    Text("11AM-6PM"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Appointment"),
                                    Text("250 L.E")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20, right: 20, bottom: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Room"),
                                    Text("12"),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text("Consultation"),
                                    Text("100 L.E")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Select Date",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),

                      Form(
                        key: formKey,
                        autovalidateMode: _autovalidate,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownDatePicker(
                                locale: "en",
                                dateformatorder: OrderFormat.DMY, // default is myd
                                isDropdownHideUnderline: true, // optional
                                isFormValidator: true, // optional
                                startYear: 1900,
                                endYear: 2025,
                                selectedDay: _selectedDay, // optional
                                selectedMonth: _selectedMonth, // optional
                                selectedYear: _selectedYear, // optional
                                onChangedDay: (value) {
                                  _selectedDay = int.parse(value!);
                                  print('onChangedDay: $value');
                                },
                                onChangedMonth: (value) {
                                  _selectedMonth = int.parse(value!);
                                  print('onChangedMonth: $value');
                                },
                                onChangedYear: (value) {
                                  _selectedYear = int.parse(value!);
                                  print('onChangedYear: $value');
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 25,),
                      const Text(
                        "Select Time",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 55,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll(
                                            Color(0xFFE3E3E4))),
                                    onPressed: () {},
                                    child: const Text(
                                      "9:00 - 10:00",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400),
                                    )),
                              ),
                          itemCount: 10,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20,right: 40),
                        child: DropdownButton<String>(
                          style: const TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                          iconSize: 30,
                          underline: const SizedBox(),
                          value: selectedItem,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedItem = newValue!;
                            });
                          },
                          items: <String>[
                            'Appointment',
                            'Online consultation',
                            'Offline Consultation',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CustomMaterialButton(title: "Book"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  DateTime? _dateTime(int? day, int? month, int? year) {
    if (day != null && month != null && year != null) {
      return DateTime(year, month, day);
    }
    return null;
  }
}
