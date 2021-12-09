

This package lets you see how many of your friends want to join you

Example: 

## Usage

```javascript
const Discord = require ('discord.js');
const gameinvite = require ('gameinvite');
const client = new Discord.Client();

// Add a game
gameinvite.create_game(message, emoji, "Your game/game info here")

client.login (<your token>);
```

## Documentation
**void** create_game(message, , **Emoji** *emoji*, **String** *game*)

**void** log_games()


**void** get_games() 
## License
[ISC](https://choosealicense.com/licenses/isc/)