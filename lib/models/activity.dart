class Activite {
  final String nomActivite;
  final String entreprise;
  final String localisation;
  final double prix;
  final String? image;
  final String unite;
  final String description;

  Activite(
      {required this.nomActivite,
      required this.entreprise,
      required this.localisation,
      required this.prix,
      required this.image,
      required this.unite,
      required this.description});
}
