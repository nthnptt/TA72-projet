# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["Voitures", "Motos", "Caravaning", "Utilitaires", "Camions", "Nautisme", "Équipement auto", "Équipement moto", "Équipement caravaning", "Équipement nautisme", "Ventes immobilières", "Immobilier Neuf", "Locations", "Colocations", "Bureaux & Commerces", "Locations & Gîtes", "Chambres d'hôtes", "Campings", "Hôtels", "Hébergements insolites", "Ventes privées vacances", "DVD - Films", "CD - Musique", "Livres", "Animaux", "Vélos", "Sports & Hobbies", "Instruments de musique", "Collection", "Jeux & Jouets", "Vins & Gastronomie", "Vêtements", "Chaussures", "Accessoires & Bagagerie", "Montres & Bijoux", "Équipement bébé", "Vêtements bébé", "Luxe et Tendance", "Informatique", "Consoles & Jeux vidéo", "Image & Son", "Téléphonie", "Prestations de services", "Billetterie", "Évènements", "Cours particuliers", "Covoiturage", "Ameublement", "Électroménager", "Arts de la table", "Décoration", "Linge de maison", "Bricolage", "Jardinage", "Matériel agricole", "Transport - Manutention", "BTP - Chantier gros-oeuvre", "Outillage - Matériaux 2nd-oeuvre", "Équipements industriels", "Restauration - Hôtellerie", "Fournitures de bureau", "Commerces & Marchés", "Matériel médical"]
categories.each do |c|
  Category.create({name: c})
end