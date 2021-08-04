class Timeslots {
  String? time;
  double? price;

  Timeslots({this.time, this.price});
}

List<Timeslots> timeslots = [
  Timeslots(time: "8:00 am - 9:00 am", price: 1500),
  Timeslots(time: "9:00 am - 10:00 am", price: 1500),
  Timeslots(time: "12:00 pm - 1:00 pm", price: 1200),
  Timeslots(time: "2:00 pm - 3:00 pm", price: 1200),
];
