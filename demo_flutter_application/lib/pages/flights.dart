import "package:flutter/material.dart";

class Flight {
  String airline;
  String flightNumber;
  String departureLocation;
  String arrivalLocation;
  DateTime departureTime;
  DateTime arrivalTime;
  int fare;

  
  Flight({
    required this.airline,
    required this.flightNumber,
    required this.departureLocation,
    required this.arrivalLocation,
    required this.departureTime,
    required this.arrivalTime,
    required this.fare,
  }){}

  void displayFlight(Flight x) {

    print("AIRLINE: ${x.airline} NUMBER: ${x.flightNumber}");
    print("FROM: ${x.departureLocation} TO: ${x.arrivalLocation}");
    print("DEPART AT: ${x.departureTime} ARRIVAL AT: ${x.arrivalTime}");
    print("DURATION: ${getDuration(x)}");
    print("FARE: \u20b9 $fare");
  }

  Duration getDuration(Flight y) {
    return y.arrivalTime.difference(y.departureTime);
  }

  
}
class Flights extends StatefulWidget {
  const Flights({super.key});

  @override
  _FlightsState createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  
  var flights = [
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 14, 30),
        arrivalTime: DateTime(2024, 6, 18, 17, 00),
        fare: 14340),
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 15, 50),
        arrivalTime: DateTime(2024, 6, 18, 20, 25),
        fare: 18429),
    Flight(
        airline: "Vistara",
        flightNumber: "UK 971, UK 555",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 6, 55),
        arrivalTime: DateTime(2024, 6, 18, 15, 10),
        fare: 20426),
    Flight(
        airline: "IndiGo",
        flightNumber: "6E 614",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 16, 30),
        arrivalTime: DateTime(2024, 6, 18, 19, 30),
        fare: 16325),
    Flight(
        airline: "Air India",
        flightNumber: "AI 464, AI 860",
        departureLocation: "Chandigarh",
        arrivalLocation: "Goa - Dabolim Airport",
        departureTime: DateTime(2024, 6, 18, 22, 45),
        arrivalTime: DateTime(2024, 6, 19, 22, 00),
        fare: 9314)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flights Available"),),
      body: ListView.builder(
          itemCount: flights.length,
          itemBuilder: (context, index){
            var flight = flights[index];
            return FlightCard(flight: flight);
          },
      )
    );
  }
}
class FlightCard extends StatelessWidget {
  final Flight flight;

  const FlightCard({required this.flight});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${flight.airline} - ${flight.flightNumber}',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.flight_takeoff, size: 16.0),
                SizedBox(width: 8.0),
                Text('${flight.departureLocation} - ${flight.arrivalLocation}'),
              ],
            ),
            Row(
              children: [
                Icon(Icons.schedule, size: 16.0),
                SizedBox(width: 8.0),
                Text('${flight.departureTime.toString().substring(10, 16)} - ${flight.arrivalTime.toString().substring(10, 16)}'),
              ],
            ),
            
            Row(
              children: [
                Text('FARE: \u20b9'), // Use the Indian Rupee symbol directly
                Text('${flight.fare.toStringAsFixed(2)}'), // Format fare to two decimal places
              ],
            ),
          ],
        ),
      ),
    );
  }
}



