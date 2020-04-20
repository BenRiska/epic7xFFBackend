# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5 Star Fire Units
Cermia = Unit.create(name: "Cermia", role: "Warrior", element: "Fire", sprite: "./images/", headshot: "./images/")

# 5 Star Ice Units
Unit.create(name: "Dizzy", role: "Mage", element: "Ice", sprite: "./images/", headshot: "./images/")

# 5 Star Earth Units
Unit.create(name: "Vildred", role: "Theif", element: "Earth", sprite: "./images/", headshot: "./images/")

# 5 Star Dark Units
Unit.create(name: "Fallen Cecilia", role: "knight", element: "Dark", sprite: "./images/", headshot: "./images/")

# 5 Star Light Units
Unit.create(name: "Ruele", role: "Soul Weaver", element: "Light", sprite: "./images/", headshot: "./images/")

# Soul Weaver Artefacts
Artefact.create(role: "Soul Weaver", name: "Celestine", art: "./images/", description: "50% Chance(Max 100%) to be Revived With 25% Health and Granted Barrier for 1 Turn After Dying. Barrier Strength is Proportional to the Casters Max Health. Can Only Be Activated Once Per Battle.")

# Warrior Artefacts
Artefact.create(role: "Warrior", name: "Durandal", art: "./images/", description: "If the caster's Health is less than 75%, Combat Readiness increases by 8.0% (max 16%) when attacked.")

# Knight Artefacts
Artefact.create(role: "Knight", name: "Elbris Ritual Sword", art: "./images/", description: "10.0% (max 20%) chance to counterattack when an ally except for the caster is attacked.")

# Theif Artefacts
Artefact.create(role: "Theif", name: "Violet Talisman", art: "./images/", description: "Increases Attack by 5% and Evasion Chance by 5% at the start of every turn (Max 10% Each). Each effect can stack up to 3 times, and resets at the start of battle.")

# Mage Artefacts
Artefact.create(role: "Mage", name: "Abyssal Crown", art: "./images/", description: "12.0% (Max 24%) chance to stun the enemy for 1 turn when attacking.")

# Ranger Artefacts
Artefact.create(role: "Ranger", name: "Bloodstone", art: "./images/", description: "Heals the ally with the lowest Health by 13.0%(Max 26%) of damage dealt.")

# Items
Item.create(name: "Skystone", description: "Premium Currency Used to Purchase Items + Covenant Summons")

# Bosses
Boss.create(name: "Wyvern 11", element: "Fire", sprite: "./images/")

# Emails
Email.create(address: "heyhey@epic7.com")

# Art
Art.create(alt: "Cermia Drawing", src: "./images/", insta: "@benhernandezlt")

# Moves
Move.create(art: "./images/", description: "Attacks with a flaming sword, with a 55% chance to make the target unhealable for 1 turn", name: "Playing With Fire", skill: 1, power: 1, multiplier: 1.2, unit: Unit.find(1))

#Tier
Tier.create(rating: "S", unit: Unit.find(2), boss: Boss.find(1))
