# ʀʏᴏɴɢ's ᴛᴇᴄʜ ʙʟᴏɢ
<img src = "https://github.com/INAUGURATE-Ryong/INAUGURATE-Ryong.github.io/assets/62015109/c14b926f-65ab-4641-bd61-d4e1d337fae7" width=500/>

# ʜᴏᴡ ᴛᴏ ᴄᴏɴᴛʀɪʙᴜᴛᴇ
- WSL Ubuntu 22.04 LTS
- vim
- html/css


# ᴅᴇᴘʟᴏʏɪɴɢ ᴛᴏ ғɪʀᴇʙᴀsᴇ
|STG|BRANCH|TRIGGER|URL|
|------|---|---|---
|DEV|Branch of PR|manual firebase cmd*|[inaugurate-ryong.web.app](https://inaugurate-ryong.web.app/)|
|PRD|main|Auto Github Action|[INAUGURATE-Ryong.github.io](https:INAUGURATE-Ryong.github.io/)|
```bash
# manual firebase cmd*
$ firebase deploy

=== Deploying to 'html-5-a6082'...

i  deploying hosting
i  hosting[inaugurate-ryong]: beginning deploy...
i  hosting[inaugurate-ryong]: found 279 files in /
✔  hosting[inaugurate-ryong]: file upload complete
i  hosting[inaugurate-ryong]: finalizing version...
✔  hosting[inaugurate-ryong]: version finalized
i  hosting[inaugurate-ryong]: releasing new version...
✔  hosting[inaugurate-ryong]: release complete

✔  Deploy complete!

Project Console: https://console.firebase.google.com/project/html-5-a6082/overview
Hosting URL: https://inaugurate-ryong.web.app
```

# ᴜᴘʟᴏᴀᴅ ᴛᴏ ᴅᴏᴄᴋᴇʀ-ʜᴜʙ
```sh
docker run --name git-blog -p 9051:80 -v /home/awya5/code/INAUGURATE-Ryong.github.io:/usr/share/nginx/html -d nginx
sudo docker commit git-blog memento12/blog:0.1.0
sudo docker push  memento12/blog:0.1.0
```

# ᴅᴇᴘʟᴏʏɪɴɢ ᴛᴏ ғʟʏ-ɪᴏ
```sh
flyctl launch
vi fly.toml 

# fly.toml app configuration file generated for inaugurate-ryong-github-io on 2024-02-13T17:47:47+09:00
#
# See https://fly.io/docs/reference/configuration/ for information about how to use this file.
#

app = 'inaugurate-ryong-github-io'
primary_region = 'nrt'

[build]
  img="memento12/blog:0.1.0"   <- 추가
[http_service]
  internal_port = 8080
  force_https = true
  auto_stop_machines = true
  auto_start_machines = true
  min_machines_running = 0
  processes = ['app']

[[vm]]
  cpu_kind = 'shared'
  cpus = 1
  memory_mb = 256

수정 후 
 flyctl deploy
```

# ᴛʜx ᴛᴏ
```
( •o• ) ﾍ( •̀ . •́ ﾍ) 와아앙
```
- https://html5up.net/dimension
