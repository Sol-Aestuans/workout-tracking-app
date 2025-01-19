import 'dart:convert';

List<Users> usersFromJson(String str) => List<Users>.from(json.decode(str).map((x) => Users.fromJson(x)));

String usersToJson(List<Users> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Users {
    int id;
    String name;
    ExerciseMedium exerciseMedium;
    int weight;
    String unit;
    int reps;
    int sets;

    Users({
        required this.id,
        required this.name,
        required this.exerciseMedium,
        required this.weight,
        required this.unit,
        required this.reps,
        required this.sets,
    });

    factory Users.fromJson(Map<String, dynamic> json) => Users(
        id: json["id"],
        name: json["name"],
        exerciseMedium: ExerciseMedium.fromJson(json["ExerciseMedium"]),
        weight: json["weight"],
        unit: json["unit"],
        reps: json["reps"],
        sets: json["sets"],
    );
    // TODO -- change this to a set
    
    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "ExerciseMedium": exerciseMedium.toJson(),
        "weight": weight,
        "unit": unit, 
        "reps": reps,
        "sets": sets,
    };
}

class ExerciseMedium {
    bool cable;
    bool dumbell;
    bool barbell;

    ExerciseMedium({
        required this.cable,
        required this.dumbell,
        required this.barbell,
    });

    factory ExerciseMedium.fromJson(Map<String, dynamic> json) => ExerciseMedium(
        cable: json["cable"],
        dumbell: json["dumbell"],
        barbell: json["barbell"],
    );

    Map<String, dynamic> toJson() => {
        "cable": cable,
        "dumbell": dumbell,
        "barbell": barbell,
    };
}
