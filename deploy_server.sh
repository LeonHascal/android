#!/usr/bin/env bash

echo "font    font    font fontfontfontfont fontfontfont               fontfont     fontfontfontfont fontfontfont     font            font fontfontfontfont fontfontfont     ";
echo "font    font    font font             font    fontfont       fontfontfontfont font             font    fontfont font            font font             font    fontfont ";
echo "font    font    font font             font        font       font        font font             font    fontfont fontfont    fontfont font             font    fontfont ";
echo "font    font    font font             font        font       font             font             fontfontfont         font    font     font             fontfontfont     ";
echo "font    font    font fontfontfontfont fontfontfontfont       fontfontfont     fontfontfontfont font    fontfont     font    font     fontfontfontfont font    fontfont ";
echo "font    font    font font             font        font           fontfontfont font             font        font     font    font     font             font        font ";
echo "font    font    font font             font        font                   font font             font        font     fontfontfont     font             font        font ";
echo "fontfontfontfontfont font             font    fontfont       font        font font             font        font         font         font             font        font ";
echo "    font    font     fontfontfontfont fontfontfont           fontfontfontfont fontfontfontfont font        font                      fontfontfontfont font        font ";
echo "                                                                                                                                                                       ";
echo "                                                                                                                                                                       ";

echo "This will deploy a webserver from termux on a non-rooted droid device.  To keep the deployment lightweight and avoid compiling complex web server binaries natively on ARM, this script utilizes Python's built-in http.server module."
echo "This script is designed specifically for the Termux environment on Android. It's not meant for general use, though it can be if you wanted to I guess."

sleep 2

echo "    ___                      _          ___             __                       _     __                     ";
echo "   F _ \",  ____     _ ___   FJ_        F __\".   ____    LJ    ____      ____    FJ_    LJ    ____     _ ___   ";
echo "  J \`-' | F __ J   J '__ \",J  _|      J (___|  F __ J   FJ   F __ J    F ___J. J  _|        F __ J   J '__ J  ";
echo "  |  __/F| |--| |  | |__|-J| |-'      J\\___ \\ | _____J J  L | _____J  | |---LJ | |-'   FJ  | |--| |  | |__| | ";
echo "  F |__/ F L__J J  F L  \`-'F |__-.   .--___) \\F L___--.J  L F L___--. F L___--.F |__-.J  L F L__J J  F L  J J ";
echo " J__|   J\\______/FJ__L     \\_____/   J\\______J\\______/FJ__LJ\\______/FJ\\______/F\\_____/J__LJ\\______/FJ__L  J__L";
echo " |__L    J______F |__L     J_____F    J______FJ______F |__| J______F  J______F J_____F|__| J______F |__L  J__|";
echo "                                                                                                              ";

echo "Binding to port 8080 because non-rooted droid cannot access standard HTTP port or standard privileged ports."
echo "This will only be visible to other devices on the same WiFi network/subnet for local IP routing to work."
echo "Tailscale should be configured and running on the android device to allow access from remote devices outside the network the droid device is running on."

sleep 2

echo "      ,gg,                                                                                   ,ggg,                                                   ";
echo "     i8\"\"8i     I8                                                                          dP\"\"8I                                                   ";
echo "     \`8,,8'     I8                                                                         dP   88                                                   ";
echo "      \`88'   88888888                                                                     dP    88                                                   ";
echo "      dP\"8,     I8                                                                       ,8'    88                                                   ";
echo "     dP' \`8a    I8      ,ggggg,     ,gggggg,    ,gggg,gg    ,gggg,gg   ,ggg,             d88888888     ,gggg,    ,gggg,   ,ggg,     ,g,       ,g,    ";
echo "    dP'   \`Yb   I8     dP\"  \"Y8ggg  dP\"\"\"\"8I   dP\"  \"Y8I   dP\"  \"Y8I  i8\" \"8i      __   ,8\"     88    dP\"  \"Yb  dP\"  \"Yb i8\" \"8i   ,8'8,     ,8'8,   ";
echo "_ ,dP'     I8  ,I8,   i8'    ,8I   ,8'    8I  i8'    ,8I  i8'    ,8I  I8, ,8I     dP\"  ,8P      Y8   i8'       i8'       I8, ,8I  ,8'  Yb   ,8'  Yb  ";
echo "\"888,,____,dP ,d88b, ,d8,   ,d8'  ,dP     Y8,,d8,   ,d8b,,d8,   ,d8I  \`YbadP'     Yb,_,dP       \`8b,,d8,_    _,d8,_    _ \`YbadP' ,8'_   8) ,8'_   8) ";
echo "a8P\"Y88888P\" 88P\"\"Y88P\"Y8888P\"    8P      \`Y8P\"Y8888P\"\`Y8P\"Y8888P\"888888P\"Y888     \"Y8P\"         \`Y8P\"\"Y8888PPP\"\"Y8888PP888P\"Y888P' \"YY8P8PP' \"YY8P8P";
echo "                                                                ,d8I'                                                                                ";
echo "                                                              ,dP'8I                                                                                 ";
echo "                                                             ,8\"  8I                                                                                 ";
echo "                                                             I8   8I                                                                                 ";
echo "                                                             \`8, ,8I                                                                                 ";
echo "                                                              \`Y8P\"                                                                                  ";

echo "If you want the server to directly serve files from the Android device's shared internal storage (like your Downloads or Documents folders), you will first need to run termux-setup-storage in Termux to grant permission, and then modify the WEB_DIR variable to point to ~/storage/shared."

echo "Right now, the script isolates the web root inside the Termux home directory ($HOME/mobile_webroot)."

sleep 2

echo "    fontfont     fontfontfont         font         fontfontfont     fontfontfont fontfontfont fontfont    font     fontfontfont     ";
echo "fontfontfontfont     font           fontfont       font    fontfont     font         font     fontfontfontfont fontfont    fontfont ";
echo "font        font     font         fontfontfont     font    fontfont     font         font     font    fontfont font                 ";
echo "font                 font       font        font   fontfontfont         font         font     font        font font                 ";
echo "fontfontfont         font     fontfontfontfontfont font    fontfont     font         font     font        font font                 ";
echo "    fontfontfont     font     font            font font        font     font         font     font        font font        fontfont ";
echo "            font     font     font            font font        font     font         font     font        font font            font ";
echo "font        font     font     font            font font        font     font         font     font        font fontfont    fontfont ";
echo "fontfontfontfont     font     font            font font        font     font     fontfontfont font        font     fontfontfont     ";
echo "                                                                                                                                    ";
echo "                                                                                                                                    ";
echo "Script will check for required packages and install them if they are not present.  It will update all packages first and will create the webroot directory if it doesn't already exist."
echo "If there are any errors then the script will exit a non-zero status"


# Exit immediately if a command exits with a non-zero status
set -e
/
PORT=8080
WEB_DIR="$HOME/mobile_webroot"

echo "[*] Updating package repositories..."
pkg update -y

echo "[*] Ensuring required packages are installed (Python & Net-tools)..."
pkg install python net-tools -y

echo "[*] Setting up the web root directory at $WEB_DIR..."
mkdir -p "$WEB_DIR"
cd "$WEB_DIR"

echo "[*] Generating a responsive index.html..."
cat << 'EOF' > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Termux Local Node</title>
    <style>
        body { 
            font-family: system-ui, -apple-system, sans-serif; 
            padding: 2rem; 
            background-color: #f4f4f9; 
            color: #333; 
        }
        .container { 
            max-width: 600px; 
            margin: 0 auto; 
            background: #ffffff; 
            padding: 2rem; 
            border-radius: 8px; 
            box-shadow: 0 4px 12px rgba(0,0,0,0.1); 
        }
        h1 { color: #2c3e50; }
        .status { 
            display: inline-block; 
            padding: 0.25rem 0.75rem; 
            background: #d4edda; 
            color: #155724; 
            border-radius: 4px; 
            font-weight: bold; 
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Mobile Node Active</h1>
        <p><span class="status">Online</span></p>
        <p>This webserver is running directly from the Termux environment on your mobile device.</p>
        <p>This directory can be used to drop files and data payloads for network-wide cross-device access.</p>
    </div>
</body>
</html>
EOF

# Extract the local IP address for the wireless interface
# Termux typically uses wlan0 for the active Wi-Fi connection
LOCAL_IP=$(ifconfig wlan0 2>/dev/null | grep -w inet | awk '{print $2}')

# Fallback to localhost if Wi-Fi isn't connected
if [ -z "$LOCAL_IP" ]; then
    LOCAL_IP="127.0.0.1"
fi

echo "=============================================================="
echo " Web server successfully deployed!"
echo " "
echo " Access this device from any computer on your local network:"
echo " URL: http://$LOCAL_IP:$PORT"
echo " "
echo " Serving files from: $WEB_DIR"
echo " Press Ctrl+C to stop the server."
echo "=============================================================="

# Boot the Python HTTP server
python -m http.server $PORT
