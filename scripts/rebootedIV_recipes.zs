#Removing Overlap nock_enough_arrows
/*
craftingTable.remove(<item:nock_enough_arrows:quiver>);
<recipetype:nock_enough_arrows:fletching>.remove(<item:nock_enough_arrows:torch_arrow>);
<recipetype:nock_enough_arrows:fletching>.remove(<item:nock_enough_arrows:soul_torch_arrow>);
<recipetype:nock_enough_arrows:fletching>.remove(<item:nock_enough_arrows:redstone_torch_arrow>);
*/
#removing paragon gear
<recipetype:miningmaster:forging>.removeAll();

#remove OG enigmaticlegacy magnet ring
craftingTable.remove(<item:enigmaticlegacy:magnet_ring>);

#remove spelunkery item magnet
craftingTable.remove(<item:spelunkery:item_magnet>);

/*
#adding magnetite to enigmaticlegacy recipe
craftingTable.addShaped("magnetite_ring",<item:enigmaticlegacy:magnet_ring>, [
    [<item:minecraft:copper_ingot>,<item:minecraft:diamond>,<item:spelunkery:magnetite_chunk>],
    [<item:minecraft:redstone>,<item:enigmaticlegacy:iron_ring>,<item:minecraft:lapis_lazuli>],
    [<item:spelunkery:magnetite_chunk>,<item:minecraft:gold_ingot>,<item:minecraft:copper_ingot>]]);
    */

#Miningmaster forging of enigmaticlegacy magnet ring with spelunkery magnetite
<recipetype:miningmaster:forging>.addJsonRecipe("forge_magnetite_ring", {
    "type":"miningmaster:forging_recipe",
    "gems": [{"item":"minecraft:copper_ingot"},{"item":"minecraft:redstone"},{"item":"minecraft:copper_ingot"},{"item":"minecraft:copper_ingot"},{"item":"minecraft:diamond"},{"item":"spelunkery:magnetite_chunk"},{"item":"spelunkery:magnetite_chunk"},{"item":"minecraft:lapis_lazuli"},{"item":"spelunkery:magnetite_chunk"}],
    "catalyst":{"item":"enigmaticlegacy:iron_ring"},
    "result":{"item":"enigmaticlegacy:magnet_ring"}
}
);