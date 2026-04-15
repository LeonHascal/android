# android
android related crap



## mobile_api.py

> [!CAUTION]
> ***Traffic is unencrypted (on HTTP) so this won't be secure and should absolutely not be exposed to the internet if it's not behind tailscale or cloudflare tunnel***

Once you run the Python script in Termux (python mobile_api.py), the server will listen for incoming HTTP requests. You can test it from any computer on your network using a tool like curl or Javascript's fetch() API.

----

**Check the status (No auth required):** 

```curl http://YOUR_ANDROID_IP:8080/api/status```

**Fetch the secure data (Requires API Key):** 

```curl -H "X-API-Key: mobile_node_key_2026" http://YOUR_ANDROID_IP:8080/api/records ```


**Trigger the shell script execution:** 

```curl -X POST -H "X-API-Key: mobile_node_key_2026" http://YOUR_ANDROID_IP:8080/api/trigger-sync```
