import 'package:flutter_training_kca/API_and_Parsed/Owner.dart';

class Items {
  Owner owner;
  int id;
  String node_id;
  String name;
  String full_name;

  Items(
      {required this.owner,
      required this.id,
      required this.node_id,
      required this.name,
      required this.full_name});

  factory Items.fromJson(Map<String, dynamic> json) {
    return Items(
      owner: Owner.fromJson(json['owner']),
      id: json['id'] as int,
      node_id: json['node_id'] as String,
      name: json['name'] as String,
      full_name: json['full_name'] as String,
    );
  }
}
