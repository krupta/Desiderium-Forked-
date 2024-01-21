import mods.create.SequencedAssemblyManager;
import mods.createtweaker.SequencedAssemblyRecipeBuilder;
import mods.createtweaker.ProcessingRecipe;
import crafttweaker.api.item.IItemStack;
import mods.create.HeatCondition;
import crafttweaker.api.item.ItemDefinition;
import crafttweaker.api.item.IItemStack;
import mods.createtweaker.DeployerApplicationRecipe;

// Добавляет рецепт предмета "Чарующий плод"
craftingTable.addShapeless("charming_fruit",
<item:cyao_coreworld:charming_fruit>, 
[<item:minecraft:gold_ingot>,<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, 
<item:minecraft:gold_ingot>, <item:occultism:datura>, <item:minecraft:gold_ingot>,
<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>]);


//Изменение рецепта Гранаты
<recipetype:create:sequenced_assembly>.removeByName("alloyedguns:sequenced_assembly/grenade");
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("alloyedguns_grenade")
                                                      .transitionTo(<item:alloyedguns:grenade>.getDefinition())
                                                      .require(<item:alloyedguns:gunpowder_bottle>)
                                                      .loops(1)
                                                      .addOutput(<item:alloyedguns:grenade>, 100.0f)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:coal>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
                                                      );