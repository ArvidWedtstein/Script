

This package creates a help menu for your discord.js-commando commands!

Example: 

## Usage

```javascript
const Discord = require ('discord.js');
const Commando = require('discord.js-commando')
const commandohelp = require ('discord.js-commando-help');
const path = require('path');
const client = new Commando.CommandoClient({
    // your options here
});
client.on('ready', async () => {
    client.registry
        .registerGroups([
            ['<your group name>', '<your group description>']
        ])
        .registerDefaultTypes()
        .registerCommandsIn(path.join(__dirname, '<your command folder>'));
})

client.on('message', (message) => {
    const args = message.content.slice(prefix.length).split(/ +/);
    commandohelp.help(message, args, 'ff0000');

}) 
client.login (<your token>);
```

## Documentation
**void** help(message, args, **HEX** *embedcolor*)

**void** get_groups(client);


**void** get_commands(client);
## License
[ISC](https://choosealicense.com/licenses/isc/)