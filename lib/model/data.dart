class Data {
  final int id;
  final String motif;
  final String quantite;
  final String date;

  Data({required this.id, required this.motif, required this.quantite, required this.date});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      motif: json['motif'],
      quantite: json['quantite'],
      date: json['date'],
    );
  }

  Map<String, dynamic> toJson() => {
    'motif': motif,
    'quantite': quantite,
  };
}