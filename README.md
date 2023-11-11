# Degabut Web Builder

A Docker image to build [degabut-web](https://github.com/degabut/degabut-web)

Environment variables:
|Key|Description|Example|
|---|---|---|
|`TAG`*|Tag of `degabut-web` to build|`1.0.0`|
|`BRANCH`*|Branch of `degabut-web` to build|`development`|

**Note** `TAG` will be prioritized over `BRANCH`, if none of them are set, it will build from `main` branch (latest release).

Environment variables for `degabut-web`:

|Key|Description|Example|
|---|---|---|
|`VITE_API_URL`|URL to your Degabut API|`http://example.com/api`|
|`VITE_YOUTUBE_API_URL`|URL to your Degabut YouTube API|`http://example.com/api/youtube`|
|`VITE_WS_URL`|URL to WebSocket API|`ws://example.com/ws`|
|`VITE_OAUTH_URL`|Discord OAuth URL for Authentication, [more information here](#oauth-url) |`https://discord.com/api/oauth2/authorize?...`|
|`VITE_DEGABUT_SERVERS`*| Configuration for multi bots, [more information here](https://github.com/degabut/examples/tree/main/v3-multi-bot#multi-bot-support-on-degabut-web)|`[{"name":"Degabut","apiBaseUrl":"http://example.com/api","wsUrl":"ws://example.com/ws","iconUrl":"/icons/colors/degabut-default.png"},{"name":"Redgabut","apiBaseUrl":"http://example.com/red-api","wsUrl":"ws://example.com/red-ws","iconUrl":"/icons/colors/degabut-red.png"}]`

*Optional