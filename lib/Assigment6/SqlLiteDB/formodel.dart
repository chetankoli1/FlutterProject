class FormModel {
  late int? id;
  late String name;
  late String email;
  late String phone;
  late String address;
  FormModel({required this.id, required this.name, required this.email, required this.phone, required this.address,});

  factory FormModel.fromMap(Map<String,dynamic> mapObj) => FormModel(
    id: mapObj['id'], 
  name: mapObj["name"],
   email: mapObj["email"], 
   address: mapObj["address"], 
   phone: mapObj["phone"]);

   Map<String,dynamic> toMap() => {
     "id" : id,
     "name" : name,
     "email" : email,
     "phone" : phone,
     "address" : address
   };
}
