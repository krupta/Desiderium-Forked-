import crafttweaker.api.events.CTEventManager;
import crafttweaker.api.item.IItemStack;
import mods.crafttweakerutils.api.events.entity.player.MCPlayerBreakSpeedEvent;

CTEventManager.register<mods.crafttweakerutils.api.events.entity.player.MCPlayerBreakSpeedEvent>((event) => {
    var player = event.player;
    if((player.inventory.getSelected() as IItemStack).withTag({}) == <item:drills:irondrill>){
        
        if(event.getState().block == <block:minecraft:diamond_ore> ||
        event.getState().block == <block:minecraft:gold_ore> || event.getState().block == <block:minecraft:deepslate_gold_ore> || 
        event.getState().block == <block:minecraft:redstone_ore> || event.getState().block == <block:minecraft:deepslate_redstone_ore>
        || event.getState().block == <block:minecraft:emerald_ore> || event.getState().block == <block:minecraft:deepslate_emerald_ore>
        || event.getState().block == <block:minecraft:deepslate_diamond_ore>){

            event.setNewSpeed(-1.0f);
        }
    }
});