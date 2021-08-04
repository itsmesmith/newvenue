import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:newvenue/YourAccounts/Txtbtn.dart';

class CreateInvoice extends StatefulWidget {
  const CreateInvoice({Key? key}) : super(key: key);

  @override
  _CreateInvoiceState createState() => _CreateInvoiceState();
}

class _CreateInvoiceState extends State<CreateInvoice> {
  bool shouldchange = false;
  int selectedIndex2 = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create an Invoice',
                style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Description',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Client Name',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                child: FormBuilderTextField(
                  name: 'age',
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 450,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xFFF8C701).withOpacity(0.1), borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Added Particular Details',
                      style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Particular list (eg: Futsal Match)',
                      style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: FormBuilderTextField(
                        name: 'age',
                        onTap: () {},
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Quantity',
                      style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                    width: 10,
                                  ),
                              itemCount: 4,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                int ind = index + 1;
                                return GestureDetector(
                                  onTap: () {
                                    shouldchange = !shouldchange;
                                    if (selectedIndex2 == index) {
                                      selectedIndex2 = -1;
                                    } else {
                                      selectedIndex2 = index;
                                    }
                                    print('should chane : $shouldchange');
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: selectedIndex2 == index ? Colors.teal : Colors.teal.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(width: 1, color: Colors.teal),
                                    ),
                                    child: Center(
                                      child: Text(
                                        ind.toString(),
                                        style: TextStyle(color: selectedIndex2 == index ? Colors.white : Colors.black),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                        Container(
                          color: Colors.white,
                          width: 81,
                          height: 50,
                          child: FormBuilderTextField(
                            name: 'age',
                            onTap: () {},
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Colors.black,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 2.0,
                                  color: Colors.teal,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                            ),
                            keyboardType: TextInputType.name,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Sub Total (Rs.)',
                      style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: FormBuilderTextField(
                        name: 'age',
                        onTap: () {},
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Colors.teal,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                        ),
                        keyboardType: TextInputType.name,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TxtBtn(txt: 'Add')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    'Added Particular Details',
                    style: TextStyle(fontFamily: 'Airbnb Cereal Bold', fontSize: 14, decoration: TextDecoration.underline),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.add_circle_outline)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'VAT / Taxes (If any)',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: FormBuilderTextField(
                  name: 'age',
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Discounts (If any)',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: FormBuilderTextField(
                  name: 'age',
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Grand Total',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                color: Colors.white,
                child: FormBuilderTextField(
                  name: 'age',
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Remarks (If any)',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 80,
                color: Colors.white,
                child: FormBuilderTextField(
                  name: 'age',
                  onTap: () {},
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.teal,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    //labelText: 'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
                  ),
                  keyboardType: TextInputType.name,
                ),
              ),
              Text(
                'Sub Total',
                style: TextStyle(fontFamily: 'Airbnb Cereal book', fontSize: 12, color: Colors.black),
              ),
              Container(
                decoration: BoxDecoration(),
                child: TxtBtn(
                  txt: 'Confirm',
                  borderwidth: 0,
                  Colour: Colors.teal,
                  txtcolour: Colors.white,
                  btnheight: 45,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
