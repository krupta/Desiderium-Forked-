import mods.sdmbestiary.bestiary.BestiaryUtils;
import mods.sdmbestiary.bestiary.api.content.tab.TextTab;
import crafttweaker.api.text.TextComponent;
import mods.sdmbestiary.bestiary.api.content.InfoContent;
import mods.sdmbestiary.bestiary.api.content.info.HeaderInfo;
import mods.sdmbestiary.bestiary.api.content.info.TextInfo;
import mods.sdmbestiary.bestiary.api.content.info.ImageInfo;
import mods.sdmbestiary.bestiary.api.content.info.ButtonInfo;
import mods.sdmbestiary.bestiary.api.content.info.ButtonItemInfo;
import mods.sdmbestiary.bestiary.api.content.tab.ItemTab;
import mods.sdmbestiary.bestiary.api.content.tab.TextFieldTab;
import mods.sdmbestiary.bestiary.api.content.tab.Group;
import mods.sdmbestiary.bestiary.api.content.graphics.DrawColor;
import mods.sdmbestiary.bestiary.api.content.graphics.DrawReact;
import mods.sdmbestiary.bestiary.api.content.info.EntityInfo;
import mods.sdmbestiary.bestiary.api.content.graphics.DrawColor;


public class goldResources{

    public static bobs() as void{
        var tab = new TextTab(new TextComponent("Бобы Десидерии"), "boobs");
        tab.setIcon(<item:wasteland:desideria_beans>);
        tab.setPriority(100);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:wasteland:desideria_beans>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-15,1);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Когда Вы найдёте первый Оазис, ознакомьтесь получше с окружением."));
                textInfo.addLine(new TextComponent("На деревьях здесь растут уникальные бобы."));
                textInfo.addLine(new TextComponent("Собрать их можно на ПКМ пустой рукой. Возьмите бобы в руку, нажмите ПКМ, чтобы преобразовать ресурс в Чёрный краситель"));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Получается из листвы Десидерии:").withStyle();
                header.addPos(8, 40);
                header.isDrawBackGround = false;
                header.setSize(180, 8);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:wasteland:dye_beans_desideria_leaves>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(150, 50);
            })); 

        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static negir() as void{
        var tab = new TextTab(new TextComponent("Чёрный Краситель"), "negir");
        tab.setIcon(<item:minecraft:black_dye>); 
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;
            tab.setPriority(101);
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:black_dye>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-15,1);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Один из важнейших ресурсов в сборке, особенно на первых этапах."));
                textInfo.addLine(new TextComponent("Используется для исследований или крафта предметов."));
                textInfo.addLine(new TextComponent("Можно добыть самыми разными способами. В Пустоши, например, из Бобов."));
                textInfo.addLine(new TextComponent("В Перевёрнутом мире из мешков Спрутов или в Жёрнове из угля."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Способы получения:").withStyle();
                header.addPos(8, 23);
                header.isDrawBackGround = false;
                header.setSize(120, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:wasteland:desideria_beans>;
                button.clickURL = "boobs";
                button.w = 70;
                button.addPos(7, 32);
                button.componentText.add(<item:wasteland:desideria_beans>.hoverName);
            }));
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:create:millstone>;
                button.clickURL = "jernovik";
                button.w = 70;
                button.addPos(7, 32);
                button.componentText.add(<item:create:millstone>.hoverName);
            }));

        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static paper() as void{
        var tab = new TextTab(new TextComponent("Источники Бумаги"), "paper");
        tab.setIcon(<item:minecraft:paper>); 
        tab.setPriority(102);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:paper>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-15,1);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Бумага понадобится Вам в исследованиях и рецептах создания."));
                textInfo.addLine(new TextComponent("В Пустоши её можно получить, если переделать добытый в Оазисах тростник."));
                textInfo.addLine(new TextComponent("В Новом мире тростник не растёт, размножить его можно только в Саде Гесперид."));
                textInfo.addLine(new TextComponent("В качестве альтернативного способа добычи бумаги используйте Кору дерева."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Можно получить в рецепте из:").withStyle();
                header.addPos(8, 40);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:sugar_cane>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-15,81);
            }));
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:farmersdelight:tree_bark>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(50,81);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Как добыть Кору?").withStyle();
                header.addPos(8, 105);
                header.isDrawBackGround = false;
                header.setSize(200, 16);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Кора древесины получается максимально просто:"));
                textInfo.addLine(new TextComponent("Разместите Разделочную доску в мире, положите на неё необтёсанное бревно (ПКМ)"));
                textInfo.addLine(new TextComponent("Возьмите любой привычный топор, щёлкните правой кнопкой мыши по Разделочной доске."));
                textInfo.addPos(8, 115);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 52);
            }));
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:farmersdelight:cutting_board>);
                image.isDrawBackGround = false;
                image.weight = 58;
                image.height = 58;
                image.addPos(8,166);
            }));


        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }
    public static stolik() as void{
        var tab = new TextTab(new TextComponent("Система Исследований"), "stolik");
        tab.setIcon(<item:cyaoadditions:research_table>); 
        tab.setPriority(103);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:cyaoadditions:research_table>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-10,24);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("На разных этапах прохождения сборки Вы столкнётесь с необходимостью"));
                textInfo.addLine(new TextComponent("исследовать тот или иной предмет, механизм или ресурс."));
                textInfo.addLine(new TextComponent("Для этого Вам понадобится Стол исследований. Создайте его и поставьте в мире."));
                textInfo.addLine(new TextComponent("После этого раздобудьте чернильные красители и бумагу."));
                textInfo.addLine(new TextComponent("Положите их в левый верхний угол. Появится перечень исследований."));
                textInfo.addLine(new TextComponent("Возьмите требуемое исследование, ориентируйтесь на описание бумажки."));
                textInfo.addLine(new TextComponent("Положите её в середину стола. Теперь можно увидеть необходимых"));
                textInfo.addLine(new TextComponent("для изучения предметов. Заполните слоты сверху и справа аспектами и"));
                textInfo.addLine(new TextComponent("предметами. Первое можно создать, если у Вас в столе есть бумага"));
                textInfo.addLine(new TextComponent("и чернильный краситель. Возьмите нужный символ и поместите на верх."));
                textInfo.addLine(new TextComponent("В правую часть поместите предметы в соответствии с отображением."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для произведения изучения требуются:").withStyle();
                header.addPos(8, 32);
                header.isDrawBackGround = false;
                header.setSize(200, 10);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:minecraft:black_dye>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Краситель\"}" as string}});
                button.clickURL = "negir";
                button.w = 70;
                button.addPos(7, 41);
                button.componentText.add(<item:minecraft:black_dye>.hoverName);
            }));
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:minecraft:paper>;
                button.clickURL = "paper";
                button.w = 70;
                button.addPos(7, 41);
                button.componentText.add(<item:minecraft:paper>.hoverName);
            }));

        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static kluch() as void{
        var tab = new TextTab(new TextComponent("Активация механизмов"), "kluuch");
        tab.setIcon(<item:the_upside_down_world:wrench>); 
        tab.setPriority(104);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:the_upside_down_world:wrench>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-10,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Когда Вы построили мультиблочный механизм и завершили квест нажатием на условие, Вам нужно взять в руки ключ и нажать Shift + ПКМ (или просто ПКМ) данным инструментом по контроллеру и портам входа/выхода, если они есть. "));
                textInfo.addLine(new TextComponent("Затем уберите ключ и не используйте его лишний раз."));
                textInfo.addLine(new TextComponent("При повторном нажатии ключом по контроллеру или шлюзу Ваши предметы будут удалены, если они были там на этот момент."));
                textInfo.addLine(new TextComponent("Всегда проверяйте, тот ли контроллер структуры Вы выбрали!"));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static voda() as void{
        var tab = new TextTab(new TextComponent("Водяное колесо"), "tabik");
        tab.setIcon(<item:create:water_wheel>); 
        tab.setPriority(105);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:water_wheel>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-10,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Водяно колесо является ключевым способом получения энергии вращения для Ваших механизмов из Create."));
                textInfo.addLine(new TextComponent("Особенно в начале выживания."));
                textInfo.addLine(new TextComponent("Разместите Колесо в мире в плоскости земли 3х3, чтобы вырабатывать наибольшее возможное количество энергии."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для получения предмета требуется исследование №5:").withStyle();
                header.addPos(8, 38);
                header.isDrawBackGround = false;
                header.setSize(400, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:cyaoadditions:research_table>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Изучение\"}" as string}});
                button.clickURL = "stolik";
                button.w = 70;
                button.addPos(7, 49);
                button.componentText.add(<item:cyaoadditions:research_table>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static jerno() as void{
        var tab = new TextTab(new TextComponent("Жёрнов"), "jernovik");
        tab.setIcon(<item:create:millstone>); 
        tab.setPriority(106);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:millstone>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-8,2);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Жёрнов - механизм, позволяющий переработать одни ресурсы в другие. Например, уголь в краситель."));
                textInfo.addLine(new TextComponent("Подпитывается боковой шестернёй с источником энергии вращения."));
                textInfo.addLine(new TextComponent("В дальнейшем может быть заменён Просеивателем."));
                textInfo.addLine(new TextComponent("Энергию можно подавать в механизм и с помощью Рукоятки."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Способы подачи энергии:").withStyle();
                header.addPos(8, 25);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:water_wheel>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-10,85);
            })); 
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:hand_crank>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(63,85);
            })); 
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static mixer() as void{
        var tab = new TextTab(new TextComponent("Смешиватель"), "mixerok");
        tab.setIcon(<item:create:mechanical_mixer>); 
        tab.setPriority(107);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:mechanical_mixer>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-8,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Смешиватель необходим для произведения уникальных рецептов."));
                textInfo.addLine(new TextComponent("Поставьте в мире Чашу, на неё с Shift поместите Смешиватель, чтобы начать использование механизма."));
                textInfo.addLine(new TextComponent("Однако для активации Смешивателя Вам потребуется большое количество энергии вращения. Для этого поставьте от источника большую шестерню, от неё подведите маленькую, повторите, так, чтобы возле Смешивателя была поставлена малая шестерня, активирующая механизм."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Рекомендуется использовать следующие шестерни:").withStyle();
                header.addPos(8, 65);
                header.isDrawBackGround = false;
                header.setSize(300, 7);
            })); 
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:cogwheel>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-5,95);
            })); 
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:large_cogwheel>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(58,95);
            })); 
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static transfer() as void{
        var tab = new TextTab(new TextComponent("Передача энергии и др."), "transferok");
        tab.setIcon(<item:pipez:wrench>); 
        tab.setPriority(108);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:pipez:wrench>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-10,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Для передачи жидкостей, энергии или предметов Вам необходимо"));
                textInfo.addLine(new TextComponent("обратиться к модификации Pipez и представленных ею предметов."));
                textInfo.addLine(new TextComponent("Ключ для труб переключает режим трубы на выход."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:pipez:item_pipe>);
                image.isDrawBackGround = false;
                image.weight = 40;
                image.height = 40;
                image.addPos(-10,65);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Ресурсы можно передавать с помощью Предметных труб."));
                textInfo.addLine(new TextComponent("Проведите трубы от одного хранилища к другому."));
                textInfo.addLine(new TextComponent("Нажмите Shift + ПКМ Ключом для труб по привязанной к хранилищу, из которого будут выходить предметы, трубе."));
                textInfo.addPos(80, 41);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 1);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:pipez:energy_pipe>);
                image.isDrawBackGround = false;
                image.weight = 40;
                image.height = 40;
                image.addPos(-10,120);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Энергию Вы можете передавать аналогичными Энергетическими трубами."));
                textInfo.addLine(new TextComponent("Начните линию труб от того же Генератора, подключите их к выходному шлюзу мультиблочной структуры, нажмите Shift + ПКМ Ключом по трубе, затем доведите трубы ко входному шлюзу или контроллеру."));
                textInfo.addPos(80, 67);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 1);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:pipez:fluid_pipe>);
                image.isDrawBackGround = false;
                image.weight = 40;
                image.height = 40;
                image.addPos(-10,175);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Жидкости передаются трубами из того же мода."));
                textInfo.addLine(new TextComponent("Свяжите два резервуара Жидкостными трубами, а после нажмите Shift + ПКМ Ключом по трубе у хранилища, из которого нужно выкачивать ресурс."));
                textInfo.addPos(80, 101);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 1);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static lava() as void{
        var tab = new TextTab(new TextComponent("Лава, Магма, Всполох"), "lavako");
        tab.setIcon(<item:minecraft:lava_bucket>); 
        tab.setPriority(109);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:lava_bucket>);
                image.isDrawBackGround = false;
                image.weight = 28;
                image.height = 28;
                image.addPos(2,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Разберём поэтапное создание нужных для продвижения ресурсов."));
                textInfo.addLine(new TextComponent("Лаву можно найти в Перевёрнутом мире, она появляется целыми озёрами."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:magma_block>);
                image.isDrawBackGround = false;
                image.weight = 28;
                image.height = 28;
                image.addPos(2,52);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Магма блоки можно создать в Смешивателе:"));
                textInfo.addLine(new TextComponent("залейте в Чашу под механизмом лаву, поместите ПКМ булыжник внутрь."));
                textInfo.addLine(new TextComponent("На ПКМ заберите полученный блок Магмы."));
                textInfo.addPos(80, 40);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create_things_and_misc:crushed_magma>);
                image.isDrawBackGround = false;
                image.weight = 32;
                image.height = 32;
                image.addPos(0,100);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Поставьте блок Магмы в мире. Нажмите киркой по блоку ПКМ,"));
                textInfo.addLine(new TextComponent("чтобы получить измельчённую магму."));
                textInfo.addPos(80, 65);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:blaze_powder>);
                image.isDrawBackGround = false;
                image.weight = 32;
                image.height = 32;
                image.addPos(0,150);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Объедините порох с полученной измельчённой магмой в Смешивателе,"));
                textInfo.addLine(new TextComponent("чтобы получить Огненный порошок"));
                textInfo.addLine(new TextComponent("Нажмите этим порошком ПКМ по Зомби, что заспавнить Всполоха."));
                textInfo.addPos(80, 95);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(400, 59);
            }));
            panel.addContent(new EntityInfo(entity => {
                entity.entityType = <entitytype:minecraft:blaze>;
                entity.size = 20;
                entity.addPos(350, 240);
                entity.yaw = 30;
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Советуем ознакомиться:").withStyle();
                header.addPos(5, 110);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:create:mechanical_mixer>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Смешиватель\"}" as string}});
                button.clickURL = "mixerok";
                button.w = 70;
                button.addPos(4, 124);
                button.componentText.add(<item:create:mechanical_mixer>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static sqz() as void{
        var tab = new TextTab(new TextComponent("Сквизер"), "sqzzs");
        tab.setIcon(<item:integrateddynamics:squeezer>); 
        tab.setPriority(110);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:integrateddynamics:squeezer>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-5,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Сквизер сжимает блоки и предметы в другие ресурсы или жидкости."));
                textInfo.addLine(new TextComponent("Поставьте Сквизер в мире, положите в него нажатием ПКМ нужный предмет, затем попрыгайте на механизме пока не получите новый материал."));
                textInfo.addLine(new TextComponent("Чтобы обнулить статус Сквизера активируйте рядом с ним редстоун сигнал."));
                textInfo.addLine(new TextComponent("Жидкость из Сквизера можно вывести в Чан из того же мода."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Вам пригодятся:").withStyle();
                header.addPos(5, 40);
                header.isDrawBackGround = false;
                header.setSize(200, 36);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:stone_button>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(-5, 85);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:integrateddynamics:drying_basin>);
                image.isDrawBackGround = false;
                image.weight = 48;
                image.height = 48;
                image.addPos(45,85);
            })); 
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static nether() as void{
        var tab = new TextTab(new TextComponent("Незерак & Песок душ"), "nethera");
        tab.setIcon(<item:minecraft:netherrack>); 
        tab.setPriority(111);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:netherrack>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Незерак может понадобиться Вам в различных рецептах и крафтах."));
                textInfo.addLine(new TextComponent("Получить его можно в Сквизере, если сжать блок Магмы."));
                textInfo.addLine(new TextComponent("А также найти в мире, в одном из биомов."));

                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Можно получить в:").withStyle();
                header.addPos(5, 23);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:integrateddynamics:squeezer>;
                button.clickURL = "sqzzs";
                button.w = 70;
                button.addPos(5, 33);
                button.componentText.add(<item:integrateddynamics:squeezer>.hoverName);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:soul_sand>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,90);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Для получения Песка Душ Вам нужно добыть Призрачный огонь."));
                textInfo.addLine(new TextComponent("Бросьте в него обычный песок, чтобы получить требуемый Песок Душ."));
                textInfo.addPos(80, 70);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для создания требуется Призрачный огонь:").withStyle();
                header.addPos(5, 79);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:occultism:spirit_fire>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Огонь\"}" as string}});
                button.clickURL = "firer";
                button.w = 70;
                button.addPos(5, 87);
                button.componentText.add(<item:occultism:spirit_fire>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static fire() as void{
        var tab = new TextTab(new TextComponent("Призрачный огонь"), "firer");
        tab.setIcon(<item:occultism:datura>); 
        tab.setPriority(113);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:occultism:spirit_fire>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Призрачный огонь потребуется Вам для переработки материалов."));
                textInfo.addLine(new TextComponent("Получить его можно посредством поджога плода Сон демона, который выращивается в Саду Гесперид из специальных семян, получаемых из травы Бросьте Плод на землю и подожгите его, чтобы получить Призрачный огонь."));
                textInfo.addLine(new TextComponent("Закиньте в огонь предмет для переработки."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для создания используются:").withStyle();
                header.addPos(5, 42);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:occultism:datura_seeds>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(5,85);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:occultism:datura>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(50,85);
            })); 
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static vent() as void{
        var tab = new TextTab(new TextComponent("Вентилятор"), "venttik");
        tab.setIcon(<item:create:encased_fan>); 
        tab.setPriority(114);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:encased_fan>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Вентилятор предназначен для обработки предметов через воду, лаву или огонь."));
                textInfo.addLine(new TextComponent("Создать его можно нажатием пропеллером ПКМ по Андезитовому корпусу."));
                textInfo.addLine(new TextComponent("Для использования Вентилятора подведите к задней части энергию вращения."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для создания используются:").withStyle();
                header.addPos(5, 40);
                header.isDrawBackGround = false;
                header.setSize(200, 22);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:andesite_casing>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(5, 79);
            })); 

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:propeller>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(55,79);
            })); 
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static qrtz() as void{
        var tab = new TextTab(new TextComponent("Незер-Кварц"), "qrtzt");
        tab.setIcon(<item:minecraft:quartz>); 
        tab.setPriority(115);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:quartz>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Кварц можно получить из Песка душ в промывке."));
                textInfo.addLine(new TextComponent("Для данного процесса поставьте Вентилятор в мире, запитайте его, разместите воду рядом с механизмом, закиньте чуть дальше от воды Песок душ и подождите, пока появится с некоторым шансом Незер-Кварц."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Создаётся в механизме из Create:").withStyle();
                header.addPos(5, 40);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:create:encased_fan>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Вентилятор\"}" as string}});
                button.clickURL = "venttik";
                button.w = 70;
                button.addPos(5, 52);
                button.componentText.add(<item:create:encased_fan>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static menril() as void{
        var tab = new TextTab(new TextComponent("Создание Менрила"), "menrilr");
        tab.setIcon(<item:integrateddynamics:menril_sapling>); 
        tab.setPriority(116);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:integrateddynamics:bucket_menril_resin>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Процесс добычи Менрила не сложен. Вам нужно в начале создать жидкий менрил в Смешивателе из голубого красителя, порошка обсидиана, любого дерева."));
                textInfo.addLine(new TextComponent("Механизм должен находиться в статусе Перегрев, когда на Горелку помещается Торт Всполоха. Впоследствии из жидкого Менрила в Чане делается блок."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Создаётся в Смешивании:").withStyle();
                header.addPos(5, 52);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:create:mechanical_mixer>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Смешиватель\"}" as string}});
                button.clickURL = "mixerok";
                button.w = 70;
                button.addPos(5, 65);
                button.componentText.add(<item:create:encased_fan>.hoverName);
            }));
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:integrateddynamics:crystalized_menril_chunk>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,115);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Из жидкости в Сушильном Чане создаётся Блок Менрила, а из него"));
                textInfo.addLine(new TextComponent("получаются кусочки кристаллизированного менрила."));
                textInfo.addLine(new TextComponent("Их можно использовать для создания Саженца Менрила."));
                textInfo.addPos(55, 90);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:integrateddynamics:menril_sapling>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,167);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Саженец менрила даёт древесину, листву, ягоды и новые саженцы."));
                textInfo.addLine(new TextComponent("Вырастить его можно в мире, если посадить на пространство земли 3х3"));
                textInfo.addLine(new TextComponent("или в Эко-теплице, закинув в контроллер Саженец и подведя ко входу энергию."));
                textInfo.addPos(55, 110);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static nezer() as void{
        var tab = new TextTab(new TextComponent("Незерит"), "nezerit");
        tab.setIcon(<item:minecraft:ancient_debris>); 
        tab.setPriority(117);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:ancient_debris>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Для создания Незеритовых слитков Вам понадобятся Древние обломки."));
                textInfo.addLine(new TextComponent("Добыть их можно в механизме Камера Пылающей Звезды из алмазного блока."));
                textInfo.addLine(new TextComponent("Просто поместите ресурс в мультиблочную конструкцию."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:netherite_scrap>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,65);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Дальше преобразуйте Обломки как в ванильном Майнкрафте в"));
                textInfo.addLine(new TextComponent("лом, из него Вы уже сможете переплавить Незеритовые слитки."));
                textInfo.addPos(80, 50);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static redst() as void{
        var tab = new TextTab(new TextComponent("Редстоун"), "redstone");
        tab.setIcon(<item:minecraft:redstone>); 
        tab.setPriority(118);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:deepslate_redstone_ore>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Редстоун можно добыть в Перевёрнутом мире в пещерах,"));
                textInfo.addLine(new TextComponent("находятся они с небольшим шансом."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));

            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:minecraft:redstone>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,45);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Редстоун пыль также можно приобрести в Трансмутации,"));
                textInfo.addLine(new TextComponent("откроете её Вы при продвижении в Алхимии."));
                textInfo.addPos(80, 40);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:create:crushed_iron_ore>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,95);
            })); 
            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("На более поздних этапах игры Редстоун можно получать"));
                textInfo.addLine(new TextComponent("из Дроблёной железной руды в промывке."));
                textInfo.addPos(80, 70);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Для промывки требуется:").withStyle();
                header.addPos(5, 85);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:create:encased_fan>.withTag({display: {Name: "{\"text\":\"Вентилятор\"}" as string}, RepairCost: 0 as int});
                button.clickURL = "venttik";
                button.w = 70;
                button.addPos(5, 95);
                button.componentText.add(<item:create:encased_fan>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

     public static gologram() as void{
        var tab = new TextTab(new TextComponent("Голограмма"), "gologramma");
        tab.setIcon(<item:ud_world_items:simple_engineering_controller>); 
        tab.setPriority(119);
        var infoPanel = new InfoContent(panel => {
            panel.space = 0;
            panel.addContent(new ImageInfo(image => {
                image.setIcon(<item:ud_world_items:simple_engineering_controller>);
                image.isDrawBackGround = false;
                image.weight = 30;
                image.height = 30;
                image.addPos(3,3);
            })); 

            panel.addContent(new TextInfo(textInfo => {
                textInfo.addLine(new TextComponent("Если Вы уже выполнили квест на строительство Мультиблочного механизма и Вам нужно повторно отобразить структуру, можно поставить активированный контроллер в мире и нажать по нему Shift + ПКМ."));
                textInfo.addPos(80, 10);
                textInfo.isDrawBackGround = false;
                textInfo.setSize(300, 39);
            }));
            panel.addContent(new HeaderInfo(header => {
                header.text = new TextComponent("§6Связано с этим:").withStyle();
                header.addPos(5, 50);
                header.isDrawBackGround = false;
                header.setSize(200, 8);
            })); 
            panel.addContent(new ButtonItemInfo(button => {
                button.item = <item:the_upside_down_world:wrench>.withTag({RepairCost: 0 as int, display: {Name: "{\"text\":\"Активация\"}" as string}});
                button.clickURL = "kluuch";
                button.w = 70;
                button.addPos(5, 60);
                button.componentText.add(<item:create:encased_fan>.hoverName);
            }));
        });
        tab.addInfoContent(infoPanel);
        BestiaryUtils.createGroup(tab);
    }

    public static init() as void{
        BestiaryUtils.isHideTittle(true);
        BestiaryUtils.setTittle(new TextComponent("§6Дневник Первопроходца"));
        bobs();
        negir();
        paper();
        stolik();
        kluch();
        voda();
        jerno();
        mixer();
        transfer();
        lava();
        sqz();
        nether();
        fire();
        vent();
        qrtz();
        menril();
        nezer();
        redst();
        gologram();
    }
}

goldResources.init();