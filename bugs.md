# This is a list of all known bugs and the way I attempt to solve them

- ~~if a tnt destroys the chest, player can drop items from barrel instantly~~
  - ~~use /loot to generate the loot table~~
  - randomize the position of the items in the barrel

- ~~vider entièrement un coffre avant de le fermer regénère intégralement son contenu~~
  - ~~vérifier la condition détectant que le coffre a été ouvert par le joueur, /!\ ne pas directement récupérer le contenu du coffre, autrement le score risque d'être mis a 0~~
- un barrel nbt copié lorsqu'il est ouvert ne peut être ouvert une fois pôsé
  - ajouter un advancement qui détecte si le joueur pose un barrel lock avec le custom lock


# Here is a list of features requested by testers
- Add a setting to disable the drop of the barrel when broken (/replace it with a mc chest)
