#!/bin/bash

echo "starting installer..."
echo "giving administrator permission to ikaros"

chmod 755 ikaros
chmod 755 $HOME/Desktop/Ikaros/tools/ssltest.py
chmod 755 $HOME/Desktop/Ikaros/tools/WPSeku/wpseku.py
chmod 755 $HOME/Desktop/Ikaros/tools/Spaghetti/wascan.py
chmod 755 $HOME/Desktop/Ikaros/tools/theHarvester/theHarvester.py
chmod 755 $HOME/Desktop/Ikaros/tools/Spaghett1/spaghetti.py

echo "installing requirements..."

pip install -r $HOME/Desktop/Ikaros/tools/WPSeku/requirements.txt
pip install -r $HOME/Desktop/Ikaros/tools/Spaghett1/doc/requirements.txt
pip install -r $HOME/Desktop/Ikaros/tools/a2sv/requirements.txt
wpscan --update

echo "moving files..."

cp ikaros /bin

echo "installed."
echo "now you can run the script just buy writing ikaros"
