// ******* Created by Arch-Nihil for the *******
// ******* Grind-Complex Supreme modpack *******



// *======= Importing Stuff =======*


import mods.gregtech.ImplosionCompressor;
import mods.gregtech.Assembler;



// *======= Variables =======*


// ||||| Arch-Core |||||


val SandstoneRod = <grindcore:item.SandstoneRod>;
val CobblestoneRod = <grindcore:item.CobblestoneRod>;

val GrandmasterCircuit = <grindcore:item.GrandmasterCircuit>; 
val PrototypeXK8 = <grindcore:item.PrototypeXK>;

val OsmiumNqAlloy = <grindcore:item.OsmiumNaquadahAlloy>;
val NeutronNqxAlloy = <grindcore:item.NeutroniumNaquadriaAlloy>;

val OsmiumNqPlate = <grindcore:item.OsmiumNaquadahPlate>;
val NeutronNqxPlate = <grindcore:item.NeutroniumNaquadriaPlate>;

val EngravedOsmiumNqChip = <grindcore:item.EngravedOsmiumNaquadahChip>;
val EngravedNeutronNqxChip = <grindcore:item.EngravedNeutroniumNaquadriaChip>;

val Sandstone = <ore:sandstone>;
val Cobblestone = <ore:cobblestone>;


// ||||| GregTech |||||


val DataOrb = <gregtech:gt.metaitem.01:32707>;
val LapotronEOrb = <gregtech:gt.metaitem.01:32597>;
val SapphireLens = <gregtech:gt.metaitem.01:24503>;
val DiamondLens = <gregtech:gt.metaitem.01:24500>;

val OsmiumPlate = <ore:plateOsmium>;
val NaquadahPlate = <ore:plateNaquadah>;
val NeutroniumPlate = <ore:plateNeutronium>;
val NaquadriaPlate = <ore:plateNaquadria>;

val File = <ore:craftingToolFile>;



// *======= Adding Recipes =======*


// --- Sandstone Rod
recipes.addShapedMirrored(SandstoneRod, [
[File, null],
[Sandstone, null]]);

// --- Cobblestone Rod
recipes.addShapedMirrored(CobblestoneRod, [
[File, null],
[Cobblestone, null]]);

// --- Grandmaster Circuit
Assembler.addRecipe(GrandmasterCircuit, DataOrb * 4, EngravedOsmiumNqChip * 4, 600, 4096);

// --- Prototype XK8
Assembler.addRecipe(PrototypeXK8, GrandmasterCircuit * 4, EngravedNeutronNqxChip * 8, 800, 8192);

// --- Engraved Osmium-Naquadah Chip
Assembler.addRecipe(EngravedOsmiumNqChip, OsmiumNqPlate, SapphireLens, 300, 2048);

// --- Engraved Neutronium-Naquadria Chip
Assembler.addRecipe(EngravedNeutronNqxChip, NeutronNqxPlate, DiamondLens, 400, 4096);

// --- Osmium-Naquadah Alloy
recipes.addShapedMirrored(OsmiumNqAlloy, [
[null, OsmiumPlate, null],
[null, NaquadahPlate, null],
[null, OsmiumPlate, null]]);

// --- Neutronium-Naquadria Alloy
recipes.addShapedMirrored(NeutronNqxAlloy, [
[null, NeutroniumPlate, null],
[null, NaquadriaPlate, null],
[null, NeutroniumPlate, null]]);

// --- Osmium-Naquadah Plate
ImplosionCompressor.addRecipe(OsmiumNqPlate, OsmiumNqAlloy, 12);

// --- Neutronium-Naquadria Plate
ImplosionCompressor.addRecipe(NeutronNqxPlate, NeutronNqxAlloy, 16);



// #======= Ore Dictionary Stuff =======#


// --- Cobblestone Rod
oreDict.stickCobblestone.add(CobblestoneRod);
oreDict.rodCobblestone.add(CobblestoneRod);

// --- Sandstone Rod
oreDict.stickSandstone.add(SandstoneRod);
oreDict.rodSandstone.add(SandstoneRod);

// --- Grandmaster Circuit
oreDict.circuitGrandmaster.add(GrandmasterCircuit);

// --- Prototype XK8
oreDict.circuitPrototype.add(PrototypeXK8);

// --- Osmium-Naquadah Plate
oreDict.plateAlloyOsmiumNaquadah.add(OsmiumNqPlate);

// --- Neutronium-Naquadria Plate
oreDict.plateAlloyNeutroniumNaquadria.add(NeutronNqxPlate);