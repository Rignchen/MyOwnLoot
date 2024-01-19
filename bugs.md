This is a list of all known bugs and the way I attempt to solve them

- if a tnt destroys the chest, player can drop items from barrel instantly 
  - move loot table into another barrel far away so that it's never stored in the current barrel
  - use a hopper to generate the loots inside that other barrel
