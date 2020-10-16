module Raids
    extend Discordrb::EventContainer

    message(:content => '!gsp aq40') do |event|
        event.channel.send_embed("AQ40 Recap") do |embed|
            embed.title = "AQ40 - 2020-10-03"
            embed.colour = 0x9a9292
            embed.url = "https://classic.warcraftlogs.com/reports/McLVB8ZywnHCgrPh"
            # embed.description = "Logs - [Lochru1292]() | [illza](https://classic.warcraftlogs.com/reports/McLVB8ZywnHCgrPh)"
            embed.description = "Attendance:\nAlayna, Dotsnothots, Shezamon, Singh, Bereaved, Delishmana, Heatinup, Ocuus, Windchill, Zandersz, Anointedone, Illshaal, Mythralee, Rhystic, Skips, Assinova, Bearflex, Draxuz, Melchi, Birdawg, Bukk, Druaga, Razx, Vear, Wolfsnack, Demnock, Derosmordots, Viqq, Baldür, Beatmeup, Buruko, Codemonkey, Kupoz, Mogresh, Nira, Nylon, Ryune, Sakei, Stacks, Yougio"
            embed.timestamp = Time.now

            embed.thumbnail = Discordrb::Webhooks::EmbedThumbnail.new(url: "https://i.imgur.com/2zEVnU7.png")
            embed.author = Discordrb::Webhooks::EmbedAuthor.new(name: "<GSP>", url: "https://gsp.gg", icon_url: "https://cdn.discordapp.com/embed/avatars/0.png")
            embed.footer = Discordrb::Webhooks::EmbedFooter.new(text: "<GSP>", icon_url: "https://cdn.discordapp.com/emojis/717661646671183933.png?v=1")

            embed.add_field(name: "Prophet Skeram", value: "none")
            embed.add_field(name: "Silithid Royalty", value: "Vear-Atiesh - [Ring of the Devoured]\nDelishmana-Atiesh - [Cape of the Trinity]\nDraxuz-Atiesh - [Formula: Enchant Gloves - Superior Agility]")
            embed.add_field(name: "Battleguard Sartura", value: "Singh-Atiesh - [Badge of the Swarmguard]\nBereaved-Atiesh - [Leggings of the Festering Swarm]")
            embed.add_field(name: "Fankriss", value: "Razx-Atiesh - [Robes of the Guardian Saint]\nCodemonkey-Atiesh - [Pauldrons of the Unrelenting]")
            embed.add_field(name: "Viscidus", value: "Ocuus-Atiesh - [Qiraji Bindings of Dominance]\nMelchi-Atiesh - [Qiraji Bindings of Command]")
            embed.add_field(name: "Princess Huhuran", value: "Druaga-Atiesh - [Qiraji Bindings of Dominance]\nDraxuz-Atiesh - [Qiraji Bindings of Command]\nNira-Atiesh - [Cloak of the Golden Hive]")
            embed.add_field(name: "Twin Emperors", value: "Yougio-Atiesh - [Vek'nilash's Circlet]\nDraxuz-Atiesh - [Vek'lor's Diadem]\nZandersz-Atiesh - [Imperial Qiraji Regalia]\nVear-Atiesh - [Boots of Epiphany]\nHeatinup-Atiesh - [Amulet of Vek'nilash]")
            embed.add_field(name: "Ouro", value: "Vear-Atiesh - [Skin of the Great Sandworm]\nBearflex-Atiesh - [Ouro's Intact Hide]")
            embed.add_field(name: "C'thun", value: "Rhystic-Atiesh - [Eye of C'Thun]\nAnointedone-Atiesh - [Husk of the Old God]\nNylon-Atiesh - [Carapace of the Old God]\nDotsnothots-Atiesh - [Belt of Never-ending Agony]")
        end
    end
end