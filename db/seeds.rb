# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
QuestionMove.create(word:"утка", gender: "feminine");
QuestionMove.create(word:"полено", gender: "neuter");
QuestionMove.create(word:"чемодан", gender: "masculine");
QuestionMove.create(word:"зонты", gender: "plural");

QuestionLong.create(partOne:"Я хочу желт", ansWrongOne:"ая, ие", ansRight:"ую", partTwo:"машин",ansRight2:"у");
QuestionLong.create(partOne:"Я езжу на красн", ansWrongOne:"ая, ым", ansRight:"ой", partTwo:"машин",ansRight2:"е");
QuestionLong.create(partOne:"Я веду стар", ansWrongOne:"ая, ым", ansRight:"ую", partTwo:"машин",ansRight2:"у");
QuestionLong.create(partOne:"Я хочу син", ansWrongOne:"ая, ие", ansRight:"юю", partTwo:"машин",ansRight2:"у");
QuestionLong.create(partOne:"Я езжу на син", ansWrongOne:"ая, ым", ansRight:"ей", partTwo:"машин",ansRight2:"е");
QuestionLong.create(partOne:"Я веду син", ansWrongOne:"ая, ым", ansRight:"юю", partTwo:"машин",ansRight2:"у");
QuestionLong.create(partOne:"Я хочу зелен", ansWrongOne:"ая, ие", ansRight:"ую", partTwo:"машин",ansRight2:"у");
QuestionLong.create(partOne:"Я езжу на зелен", ansWrongOne:"ая, ым", ansRight:"ой", partTwo:"машин",ansRight2:"е");
QuestionLong.create(partOne:"Я веду зелен", ansWrongOne:"ая, ым", ansRight:"ую", partTwo:"машин",ansRight2:"у");

QuestionChoice.create(word:"утка", gender: "feminine", number:"singular");
QuestionChoice.create(word:"полено", gender: "neuter", number:"singular");
QuestionChoice.create(word:"чемодан", gender: "masculine", number:"singular");
