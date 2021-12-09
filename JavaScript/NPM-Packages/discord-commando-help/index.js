const Discord = require('discord.js')


exports.get_groups = function (client) {
    if (!client.registry) {
        return console.error('Could not find a valid registry of commands');
    }
    let groups = []
    client.registry.groups.forEach((g) => {
        groups.push(g.id)
    })
    return groups
}

exports.get_commands = function (client) {
    if (!client.registry) {
        return console.error('Could not find a valid registry of commands');
    }
    let commands = []
    client.registry.groups.forEach((g) => {
        g.commands.forEach((c) => {
            commands.push(c.name)
            
        })
    })
    return commands
}
const cmd = []
const cmddetails = []
const cmddescription = []
const cmdexamples = [];
exports.help = async function (message, args = [], embed_color="0000ff") {
    if (!Discord.Message.prototype.isPrototypeOf (message))
        return console.error ('"message" must be of type Message from discord.js');
    if (!message.client.registry) {
        return console.error('Could not find a valid registry of commands');
    }
    if (!args instanceof Array) {
        return console.error('"args" needs to the an array of arguments')
    }
    
    const { guild, author } = message
    
    if (args[0]) {
        message.client.registry.groups.forEach((g) => {
            g.commands.forEach((c) => {
                if (!c.hidden) {
                    cmd.push(c.name)
                    cmddescription.push(c.description)
                    cmddetails.push(c.details)
                }
            })
        })
        
        if (!cmd.includes(args[0])) return
        let embed = new Discord.MessageEmbed()
            .setTitle(`Help - ${cmd[cmd.indexOf(args[0])]}`)
            if (!cmddetails[cmd.indexOf(args[0])]) {
                embed.setDescription(`${cmddescription[cmd.indexOf(args[0])]}`)
            } else {
                embed.setDescription(`${cmddetails[cmd.indexOf(args[0])]}`)
            }
            
        let messageEmbed = message.channel.send(embed);
        return
    }
    const emptyarray = arr => arr.length = 0;
        
    


      
    const categories = []
    message.client.registry.groups.forEach((g) => {
        categories.push(g.id)
    })
    function capitalizeFirstLetter(string) {
        return string.charAt(0).toUpperCase() + string.slice(1);
    }
    let embed = new Discord.MessageEmbed()
        .setColor(embed_color)
        .setTitle(`Command Help`)
        .setFooter(`Page - 0/${categories.length}`)
        .addFields(
            {name: '__**' + 0 + '**__', value: 'This page', inline: true},
        )
        for (let i = 0; i < categories.length; i++) {
            embed.addField('__**' + `${capitalizeFirstLetter(categories[i])}` + ` - ${i + 1}` + '**__', `${categories[i]} commands`, true)
        }

    let messageEmbed = await message.channel.send({
        embed: embed 
    });
    async function helpembed (title, description, page, contentname, contentvalue, contentalias, contentexample) {
        let embedMain = new Discord.MessageEmbed()
            .setTitle(`${title} - ${capitalizeFirstLetter(description)}`)
            .setColor(embed_color)
            .setFooter(`Page ${page}/${categories.length}`)
        
            for (let i = 0; i < contentname.length; i++) {
                embedMain.addField('> ' + contentname[i], `${contentvalue[i]}`, true)
            }
        messageEmbed = await messageEmbed.edit(embedMain);
    }
    let page = 0;
    messageEmbed.react('👈');
    messageEmbed.react('👉');
    let contentname = []
    let contentvalue = []
    let contentalias = []
    let contentexample = []
    
    message.client.on('messageReactionAdd', async (reaction, user) => {
        if (reaction.message.partial) await reaction.message.fetch();
        if (reaction.partial) await reaction.fetch();
        if (user.bot) return;
        if (!reaction.message.guild) return;
        if (reaction.message.id != messageEmbed.id) return
        if (reaction.message.channel.id == message.channel.id) {
            await reaction.users.remove(user.id);
            page = Number(page)
            if (reaction.emoji.name == '👈') {
                if (page == 0) {     
                    page = categories.length
                } else {
                    page -= 1
                }
            } else if (reaction.emoji.name == '👉') {
                if (page > categories.length - 1) {
                    page = 0
                } else {
                    page += 1
                }
            }
            if (page == '0') {
                emptyarray(contentname);
                emptyarray(contentvalue);
                emptyarray(contentalias);
                emptyarray(contentexample);
                let embed2 = new Discord.MessageEmbed()
                    .setColor(embed_color)
                    .setTitle(`Help Commands`)
                    .setFooter(`Page - ${page}/${categories.length}`)
                    .addFields(
                        {name: '__**' + 0 + '**__', value: 'This page', inline: true},
                    )
                    for (let i = 0; i < categories.length; i++) {
                        embed2.addField('__**' + `${capitalizeFirstLetter(categories[i])}` + ` - ${i + 1}` + '**__', `${categories[i]} commands`, true)
                    }
                messageEmbed = await messageEmbed.edit(embed2);
                return
            } else {
                emptyarray(contentname);
                emptyarray(contentvalue);
                emptyarray(contentalias);
                emptyarray(contentexample);
                message.client.registry.groups.forEach((e) => {
                    if (e.id === categories[page - 1]) {
                        e.commands.forEach((c) => {
                            if (c.ownerOnly && !message.client.isOwner(message.member.user)) {
                                return;
                            }
                            contentname.push(c.name)
                            contentvalue.push(c.description)
                            contentalias.push(c.aliases)
                            contentexample.push(c.examples);
                        })
                        helpembed('Help Commands', `${categories[page - 1]}`, page, contentname, contentvalue, contentalias, contentexample);
                    }
                })
            }
            await reaction.users.remove(user.id);
            return
        } else {
            return;
        }
    });
}